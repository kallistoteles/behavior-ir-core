//! Typed products and finite multisets for deterministic external-work requests.
use crate::semantic::{
    expr::Expr,
    types::{Hash, Type},
};
use crate::wire::Loc;

#[derive(Debug, Clone)]
pub struct CommandField {
    pub(crate) name: String,
    pub(crate) ty: Type,
    pub(crate) loc: Loc,
}
impl CommandField {
    pub fn name(&self) -> &str {
        &self.name
    }
    pub fn ty(&self) -> &Type {
        &self.ty
    }
    pub fn loc(&self) -> &Loc {
        &self.loc
    }
}
#[derive(Debug, Clone)]
pub struct CommandDeclaration {
    pub(crate) name: String,
    pub(crate) fields: Vec<CommandField>,
    pub(crate) hash: Hash,
    pub(crate) loc: Loc,
}
impl CommandDeclaration {
    pub fn name(&self) -> &str {
        &self.name
    }
    pub fn fields(&self) -> &[CommandField] {
        &self.fields
    }
    pub fn hash(&self) -> &Hash {
        &self.hash
    }
    pub fn declaration_hash(&self) -> &Hash {
        &self.hash
    }
    pub fn canonical_descriptor(&self) -> serde_json::Value {
        serde_json::json!({"name": self.name, "fields": self.fields.iter().map(|f| serde_json::json!({"name": f.name, "type": descriptor_type(&f.ty)})).collect::<Vec<_>>(), "declaration_hash": crate::semantic::types::hash_display(&self.hash)})
    }
    pub fn loc(&self) -> &Loc {
        &self.loc
    }
}

/// A candidate request. It has no committed occurrence identity and cannot be
/// constructed from unvalidated caller data.
#[derive(Debug, Clone, PartialEq, Eq)]
pub struct CommandIntent {
    declaration: Hash,
    payload: std::collections::BTreeMap<String, crate::semantic::value::Value>,
    hash: Hash,
    bytes: Vec<u8>,
    json: serde_json::Value,
}
impl CommandIntent {
    pub fn declaration_hash(&self) -> &Hash {
        &self.declaration
    }
    pub fn payload(&self) -> &std::collections::BTreeMap<String, crate::semantic::value::Value> {
        &self.payload
    }
    pub fn intent_hash(&self) -> &Hash {
        &self.hash
    }
    pub fn as_json(&self) -> &serde_json::Value {
        &self.json
    }
    pub(crate) fn new(
        declaration: &CommandDeclaration,
        payload: std::collections::BTreeMap<String, crate::semantic::value::Value>,
    ) -> Result<Self, CommandError> {
        use crate::semantic::value::{decode_scalar, encode};
        let expected: std::collections::BTreeSet<_> =
            declaration.fields.iter().map(|f| &f.name).collect();
        if expected != payload.keys().collect() {
            return Err(CommandError {
                code: "COMMAND_PAYLOAD_FIELDS",
                message: "payload keys do not match declaration".into(),
            });
        }
        let mut encoded = serde_json::Map::new();
        let mut fields = Vec::new();
        for field in &declaration.fields {
            let value = &payload[&field.name];
            let json = encode(&field.ty, value);
            if decode_scalar(&field.ty, &json).as_ref() != Ok(value) {
                return Err(CommandError {
                    code: "INVALID_COMMAND_VALUE",
                    message: format!(
                        "payload `{}` does not preserve its declared type",
                        field.name
                    ),
                });
            }
            fields.push((field.name.clone(), field.ty.clone(), value.clone()));
            encoded.insert(field.name.clone(), json);
        }
        let (hash, bytes) = crate::admit::hash::command_intent(&declaration.hash, &fields)?;
        let json = serde_json::json!({"declaration": crate::semantic::types::hash_display(&declaration.hash), "payload": encoded, "intent_hash": crate::semantic::types::hash_display(&hash)});
        Ok(Self {
            declaration: declaration.hash,
            payload,
            hash,
            bytes,
            json,
        })
    }
}

/// Canonical representation of an unordered finite multiset. The slice order is
/// an encoding order; equal requests remain distinct entries.
#[derive(Debug, Clone, Default, PartialEq, Eq)]
pub struct CommandIntentBag(Vec<CommandIntent>);
impl CommandIntentBag {
    pub fn intents(&self) -> &[CommandIntent] {
        &self.0
    }
    pub fn len(&self) -> usize {
        self.0.len()
    }
    pub fn is_empty(&self) -> bool {
        self.0.is_empty()
    }
    pub(crate) fn new(mut intents: Vec<CommandIntent>) -> Result<Self, CommandError> {
        canonical_keys(intents.iter().map(|i| (i.hash, i.bytes.clone())).collect())?;
        intents.sort_by(|a, b| (a.hash, &a.bytes).cmp(&(b.hash, &b.bytes)));
        Ok(Self(intents))
    }
}
#[derive(Debug, Clone)]
pub struct CommandEmission {
    pub(crate) declaration: std::sync::Arc<CommandDeclaration>,
    pub(crate) guard: Expr,
    pub(crate) payload: Vec<(String, Expr)>,
    pub(crate) hash: Hash,
    pub(crate) bytes: Vec<u8>,
    pub(crate) loc: Loc,
}
impl CommandEmission {
    pub fn declaration(&self) -> &CommandDeclaration {
        &self.declaration
    }
    pub fn guard(&self) -> &Expr {
        &self.guard
    }
    pub fn payload(&self) -> &[(String, Expr)] {
        &self.payload
    }
    pub fn hash(&self) -> &Hash {
        &self.hash
    }
    pub fn loc(&self) -> &Loc {
        &self.loc
    }
}
#[derive(Debug, Clone, PartialEq, Eq, thiserror::Error)]
#[error("{code}: {message}")]
pub struct CommandError {
    pub code: &'static str,
    pub message: String,
}
pub(crate) fn encoding_limit() -> CommandError {
    CommandError {
        code: "ENCODING_LIMIT",
        message: "length or count exceeds u32 encoding".into(),
    }
}
pub(crate) fn checked_count(count: u64) -> Result<[u8; 4], CommandError> {
    Ok(u32::try_from(count)
        .map_err(|_| encoding_limit())?
        .to_be_bytes())
}
pub(crate) type ContentKey = (Hash, Vec<u8>);
pub(crate) fn canonical_keys(
    mut entries: Vec<([u8; 32], Vec<u8>)>,
) -> Result<Vec<ContentKey>, CommandError> {
    checked_count(u64::try_from(entries.len()).map_err(|_| encoding_limit())?)?;
    entries.sort();
    for pair in entries.windows(2) {
        if pair[0].0 == pair[1].0 && pair[0].1 != pair[1].1 {
            return Err(CommandError {
                code: "HASH_CONTENT_CONFLICT",
                message: "equal command hashes have unequal semantic content".into(),
            });
        }
    }
    Ok(entries)
}
pub(crate) fn supported_scalar(t: &Type) -> bool {
    match t {
        Type::Option(inner) => !matches!(**inner, Type::Option(_)) && supported_scalar(inner),
        Type::Entity(_) | Type::Exact(_) => false,
        _ => true,
    }
}
pub(crate) fn canonical_emissions(
    mut emissions: Vec<CommandEmission>,
) -> Result<Vec<CommandEmission>, CommandError> {
    canonical_keys(
        emissions
            .iter()
            .map(|e| (e.hash, e.bytes.clone()))
            .collect(),
    )?;
    emissions.sort_by(|a, b| (a.hash, &a.bytes).cmp(&(b.hash, &b.bytes)));
    Ok(emissions)
}
#[cfg(test)]
mod tests {
    #![allow(clippy::unwrap_used, clippy::expect_used)]
    use super::{canonical_keys, checked_count};
    #[test]
    fn checked_encoding_accepts_exact_u32_endpoints() {
        assert_eq!(checked_count(0).unwrap(), [0, 0, 0, 0]);
        assert_eq!(
            checked_count(u64::from(u32::MAX)).unwrap(),
            [255, 255, 255, 255]
        );
    }
    #[test]
    fn checked_encoding_refuses_large_count_without_allocation_or_saturation() {
        for count in [u64::from(u32::MAX) + 1, u64::MAX] {
            assert_eq!(checked_count(count).unwrap_err().code, "ENCODING_LIMIT");
        }
    }
    #[test]
    fn canonical_bag_preserves_duplicate_keys_and_is_permutation_invariant() {
        let a = ([1; 32], vec![11]);
        let b = ([2; 32], vec![22]);
        assert_eq!(
            canonical_keys(vec![b.clone(), a.clone(), a.clone()]).unwrap(),
            vec![a.clone(), a, b]
        );
    }
    #[test]
    fn a_collision_between_different_semantic_bytes_is_refused_not_deduplicated() {
        assert_eq!(
            canonical_keys(vec![([1; 32], vec![11]), ([1; 32], vec![22])])
                .unwrap_err()
                .code,
            "HASH_CONTENT_CONFLICT"
        );
    }
}

fn descriptor_type(t: &Type) -> serde_json::Value {
    match t {
        Type::Enum(e) => {
            serde_json::json!({"t":"enum","hash":crate::semantic::types::hash_display(&e.hash)})
        }
        Type::Nominal(n) => {
            serde_json::json!({"t":"nominal","hash":crate::semantic::types::hash_display(&n.hash)})
        }
        Type::Option(t) => serde_json::json!({"t":"option","of":descriptor_type(t)}),
        _ => t.to_wire_json(),
    }
}

pub(crate) fn archive(
    module: &crate::semantic::module::Module,
    bag: &CommandIntentBag,
) -> Result<serde_json::Value, CommandError> {
    let mut declarations = std::collections::BTreeMap::new();
    let mut types = std::collections::BTreeMap::new();
    fn add_type(
        t: &Type,
        out: &mut std::collections::BTreeMap<Hash, serde_json::Value>,
    ) -> Result<(), CommandError> {
        let (hash, value) = match t {
            Type::Enum(e) => (
                e.hash,
                serde_json::json!({"kind":"enum","name":e.name,"values":e.values,"hash":crate::semantic::types::hash_display(&e.hash)}),
            ),
            Type::Nominal(n) => (
                n.hash,
                serde_json::json!({"kind":"nominal","name":n.name,"underlying":n.underlying.to_type().to_wire_json(),"ops":n.ops,"scale":n.scale,"hash":crate::semantic::types::hash_display(&n.hash)}),
            ),
            Type::Option(t) => return add_type(t, out),
            _ => return Ok(()),
        };
        if out.get(&hash).is_some_and(|old| old != &value) {
            return Err(CommandError {
                code: "HASH_CONTENT_CONFLICT",
                message: "unequal archived types share a hash".into(),
            });
        }
        out.insert(hash, value);
        Ok(())
    }
    for intent in bag.intents() {
        let declaration = module
            .commands()
            .values()
            .find(|d| d.hash == intent.declaration)
            .ok_or_else(|| CommandError {
                code: "INVALID_COMMAND_VALUE",
                message: "intent has no admitted declaration".into(),
            })?;
        let descriptor = declaration.canonical_descriptor();
        if declarations
            .get(&declaration.hash)
            .is_some_and(|old| old != &descriptor)
        {
            return Err(CommandError {
                code: "HASH_CONTENT_CONFLICT",
                message: "unequal declarations share a hash".into(),
            });
        }
        declarations.insert(declaration.hash, descriptor);
        for field in &declaration.fields {
            add_type(&field.ty, &mut types)?;
        }
    }
    Ok(
        serde_json::json!({"declarations":declarations.into_values().collect::<Vec<_>>(),"types":types.into_values().collect::<Vec<_>>(),"intents":bag.intents().iter().map(CommandIntent::as_json).collect::<Vec<_>>()}),
    )
}

pub(crate) fn parse_hash(text: &str) -> Result<Hash, CommandError> {
    let bad = || CommandError {
        code: "INVALID_COMMAND_ARCHIVE",
        message: "expected a canonical sha256 identity".into(),
    };
    let Some(hex) = text.strip_prefix("sha256:") else {
        return Err(bad());
    };
    if hex.len() != 64
        || !hex
            .bytes()
            .all(|b| b.is_ascii_digit() || (b'a'..=b'f').contains(&b))
    {
        return Err(bad());
    }
    let mut hash = [0; 32];
    for (i, pair) in hex.as_bytes().as_chunks::<2>().0.iter().enumerate() {
        hash[i] = u8::from_str_radix(std::str::from_utf8(pair).map_err(|_| bad())?, 16)
            .map_err(|_| bad())?;
    }
    Ok(hash)
}
#[derive(serde::Deserialize)]
#[serde(deny_unknown_fields)]
struct ArchiveBody {
    declarations: Vec<ArchivedDeclaration>,
    types: Vec<serde_json::Value>,
    intents: Vec<ArchivedIntent>,
}
#[derive(serde::Deserialize)]
#[serde(deny_unknown_fields)]
struct ArchivedDeclaration {
    name: String,
    fields: Vec<ArchivedField>,
    declaration_hash: String,
}
#[derive(serde::Deserialize)]
#[serde(deny_unknown_fields)]
struct ArchivedField {
    name: String,
    #[serde(rename = "type")]
    ty: Descriptor,
}
#[derive(serde::Deserialize)]
#[serde(deny_unknown_fields)]
struct ArchivedIntent {
    declaration: String,
    payload: std::collections::BTreeMap<String, serde_json::Value>,
    intent_hash: String,
}
#[derive(serde::Deserialize)]
#[serde(tag = "t", deny_unknown_fields)]
enum Descriptor {
    #[serde(rename = "bool")]
    Bool,
    #[serde(rename = "int")]
    Int,
    #[serde(rename = "decimal")]
    Decimal,
    #[serde(rename = "string")]
    String,
    #[serde(rename = "enum")]
    Enum { hash: String },
    #[serde(rename = "nominal")]
    Nominal { hash: String },
    #[serde(rename = "id")]
    Id { entity: String },
    #[serde(rename = "option")]
    Option { of: Box<Descriptor> },
}
#[derive(serde::Deserialize)]
#[serde(deny_unknown_fields)]
struct ArchivedEnum {
    kind: String,
    name: String,
    values: Vec<String>,
    hash: String,
}
#[derive(serde::Deserialize)]
#[serde(deny_unknown_fields)]
struct ArchivedNominal {
    kind: String,
    name: String,
    underlying: serde_json::Value,
    ops: u8,
    scale: Option<u8>,
    hash: String,
}
fn archive_error(message: impl Into<String>) -> CommandError {
    CommandError {
        code: "INVALID_COMMAND_ARCHIVE",
        message: message.into(),
    }
}
fn closed<T: serde::de::DeserializeOwned>(json: &serde_json::Value) -> Result<T, CommandError> {
    serde_json::from_value(json.clone()).map_err(|e| archive_error(e.to_string()))
}
fn checked_name(name: &str) -> Result<(), CommandError> {
    if crate::wire::is_identifier(name) {
        Ok(())
    } else {
        Err(archive_error("invalid product name"))
    }
}
impl Descriptor {
    fn resolve(
        &self,
        types: &std::collections::BTreeMap<Hash, Type>,
    ) -> Result<Type, CommandError> {
        let ty = match self {
            Self::Bool => Type::Bool,
            Self::Int => Type::Int,
            Self::Decimal => Type::Decimal,
            Self::String => Type::String,
            Self::Enum { hash } => match types.get(&parse_hash(hash)?) {
                Some(t @ Type::Enum(_)) => t.clone(),
                _ => return Err(archive_error("missing enum descriptor")),
            },
            Self::Nominal { hash } => match types.get(&parse_hash(hash)?) {
                Some(t @ Type::Nominal(_)) => t.clone(),
                _ => return Err(archive_error("missing nominal descriptor")),
            },
            Self::Id { entity } => {
                checked_name(entity)?;
                Type::Id(entity.clone())
            }
            Self::Option { of } => Type::Option(Box::new(of.resolve(types)?)),
        };
        if !supported_scalar(&ty) {
            return Err(archive_error("unsupported stored scalar descriptor"));
        }
        Ok(ty)
    }
}
/// Validate a historical command product without resolving any current module.
pub(crate) fn decode_archive(raw: &serde_json::Value) -> Result<CommandIntentBag, CommandError> {
    crate::wire::checked_wire_lengths(raw, "commands")
        .map_err(|e| archive_error(format!("{e:?}")))?;
    let body: ArchiveBody = closed(raw)?;
    let mut types = std::collections::BTreeMap::new();
    let mut names = std::collections::BTreeSet::new();
    let mut last = None;
    for value in &body.types {
        let ty = match value["kind"].as_str() {
            Some("enum") => {
                let a: ArchivedEnum = closed(value)?;
                checked_name(&a.name)?;
                if a.kind != "enum"
                    || a.values.is_empty()
                    || a.values
                        .iter()
                        .collect::<std::collections::BTreeSet<_>>()
                        .len()
                        != a.values.len()
                {
                    return Err(archive_error("invalid enum domain"));
                }
                let hash = crate::admit::hash::enum_decl(&a.name, &a.values);
                if parse_hash(&a.hash)? != hash || !names.insert(a.name.clone()) {
                    return Err(archive_error("enum identity/name mismatch"));
                }
                Type::Enum(std::sync::Arc::new(crate::semantic::types::EnumInfo {
                    name: a.name,
                    values: a.values,
                    hash,
                }))
            }
            Some("nominal") => {
                let a: ArchivedNominal = closed(value)?;
                checked_name(&a.name)?;
                let underlying = match crate::wire::decode_type(&a.underlying, "underlying")
                    .map_err(|e| archive_error(format!("{e:?}")))?
                {
                    crate::wire::WType::Bool => crate::semantic::types::Prim::Bool,
                    crate::wire::WType::Int => crate::semantic::types::Prim::Int,
                    crate::wire::WType::Decimal => crate::semantic::types::Prim::Decimal,
                    crate::wire::WType::String => crate::semantic::types::Prim::String,
                    _ => return Err(archive_error("nominal underlying type must be primitive")),
                };
                if a.kind != "nominal"
                    || value.get("scale").is_none()
                    || a.ops > 15
                    || (a.ops != 0 && !underlying.is_numeric())
                    || a.scale.is_some_and(|s| {
                        s > 28 || underlying != crate::semantic::types::Prim::Decimal
                    })
                {
                    return Err(archive_error("invalid nominal operations/scale"));
                }
                let hash = match a.scale {
                    Some(s) => {
                        crate::admit::hash::nominal_fixed_decl(&a.name, underlying, a.ops, s)
                    }
                    None => crate::admit::hash::nominal_decl(&a.name, underlying, a.ops),
                };
                if parse_hash(&a.hash)? != hash || !names.insert(a.name.clone()) {
                    return Err(archive_error("nominal identity/name mismatch"));
                }
                Type::Nominal(std::sync::Arc::new(crate::semantic::types::NominalInfo {
                    name: a.name,
                    underlying,
                    ops: a.ops,
                    scale: a.scale,
                    hash,
                }))
            }
            _ => return Err(archive_error("unsupported archived type")),
        };
        let hash = match &ty {
            Type::Enum(e) => e.hash,
            Type::Nominal(n) => n.hash,
            _ => return Err(archive_error("invalid archived type")),
        };
        if last.is_some_and(|old| old >= hash) {
            return Err(archive_error("type archive is not canonical and unique"));
        }
        last = Some(hash);
        types.insert(hash, ty);
    }
    let loc = Loc {
        file: String::new(),
        line: 1,
    };
    let mut declarations = std::collections::BTreeMap::new();
    let mut used_types = std::collections::BTreeSet::new();
    let mut command_names = std::collections::BTreeSet::new();
    last = None;
    for a in body.declarations {
        checked_name(&a.name)?;
        if !command_names.insert(a.name.clone()) || names.contains(&a.name) {
            return Err(archive_error("duplicate archived command name"));
        }
        let mut fields = Vec::new();
        let mut previous = None;
        for field in a.fields {
            checked_name(&field.name)?;
            if previous.as_ref().is_some_and(|old| old >= &field.name) {
                return Err(archive_error("product fields are not canonical and unique"));
            }
            previous = Some(field.name.clone());
            let ty = field.ty.resolve(&types)?;
            let scalar = match &ty {
                Type::Option(t) => t.as_ref(),
                t => t,
            };
            match scalar {
                Type::Enum(e) => {
                    used_types.insert(e.hash);
                }
                Type::Nominal(n) => {
                    used_types.insert(n.hash);
                }
                _ => {}
            }
            fields.push(CommandField {
                name: field.name,
                ty,
                loc: loc.clone(),
            });
        }
        let hash = crate::admit::hash::command_declaration(
            &a.name,
            &fields
                .iter()
                .map(|f| (f.name.clone(), f.ty.clone()))
                .collect::<Vec<_>>(),
        )?;
        if parse_hash(&a.declaration_hash)? != hash || last.is_some_and(|old| old >= hash) {
            return Err(archive_error("declaration hash/order mismatch"));
        }
        last = Some(hash);
        declarations.insert(
            hash,
            CommandDeclaration {
                name: a.name,
                fields,
                hash,
                loc: loc.clone(),
            },
        );
    }
    if used_types != types.keys().copied().collect() {
        return Err(archive_error("extra or missing scalar types"));
    }
    let mut intents = Vec::new();
    let mut used_declarations = std::collections::BTreeSet::new();
    for a in body.intents {
        let declaration = parse_hash(&a.declaration)?;
        let product = declarations
            .get(&declaration)
            .ok_or_else(|| archive_error("missing declaration"))?;
        let mut payload = std::collections::BTreeMap::new();
        for (name, value) in &a.payload {
            let field = product
                .fields
                .iter()
                .find(|f| &f.name == name)
                .ok_or_else(|| archive_error("unknown payload field"))?;
            let decoded =
                crate::semantic::value::decode_scalar(&field.ty, value).map_err(archive_error)?;
            if let crate::semantic::value::Value::Dec(decimal) = &decoded {
                let ty = match &field.ty {
                    Type::Option(t) => t.as_ref(),
                    t => t,
                };
                if let Some(n) = crate::semantic::types::fixed_scale(ty)
                    && let Some(scale) = n.scale
                    && (!decimal.on_grid(scale) || !decimal.in_fixed_range(scale))
                {
                    return Err(archive_error("payload is outside its fixed grid/range"));
                }
            }
            if crate::semantic::value::encode(&field.ty, &decoded) != *value {
                return Err(archive_error(
                    "payload scalar representation is not canonical",
                ));
            }
            payload.insert(name.clone(), decoded);
        }
        let intent = CommandIntent::new(product, payload)?;
        if parse_hash(&a.intent_hash)? != intent.hash {
            return Err(archive_error("intent hash differs from its typed content"));
        }
        used_declarations.insert(declaration);
        intents.push(intent);
    }
    if used_declarations != declarations.keys().copied().collect() {
        return Err(archive_error("extra or missing command declarations"));
    }
    let bag = CommandIntentBag::new(intents)?;
    if raw["intents"]
        != serde_json::json!(
            bag.intents()
                .iter()
                .map(CommandIntent::as_json)
                .collect::<Vec<_>>()
        )
    {
        return Err(archive_error("intent bag is not canonically ordered"));
    }
    Ok(bag)
}
