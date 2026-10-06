//! Declarations: names, types, and parameters (enums, nominal types, entities, and the
//! parameter lists of derived values, invariants, and actions).

use std::collections::{BTreeMap, BTreeSet};
use std::sync::Arc;

use crate::admit::{AdmissionError, hash};
use crate::semantic::module::{EntityItem, Param, ParamRole};
use crate::semantic::types::{EnumInfo, NominalInfo, Prim, Type, Unit, check_type, ops};
use crate::wire::{Loc, WModule, WParam, WType};

/// Resolved declarations of the information model.
pub(crate) struct Decls {
    pub commands: BTreeMap<String, Arc<crate::commands::CommandDeclaration>>,
    pub enums: BTreeMap<String, Arc<EnumInfo>>,
    pub nominals: BTreeMap<String, Arc<NominalInfo>>,
    pub entities: BTreeMap<String, EntityItem>,
    /// The names of the module's declared reads (feature 010): capability entry points that no
    /// module expression may call.
    pub reads: BTreeSet<String>,
}

fn err(errs: &mut Vec<AdmissionError>, code: &str, msg: impl Into<String>, loc: &Loc) {
    errs.push(AdmissionError::new(code, msg, Some(loc)));
}

fn prim_of(t: &WType) -> Option<Prim> {
    Some(match t {
        WType::Bool => Prim::Bool,
        WType::Int => Prim::Int,
        WType::Decimal => Prim::Decimal,
        WType::String => Prim::String,
        _ => return None,
    })
}

/// Whether a wire type is `Ref<T>` or `Option<Ref<T>>` (feature 006): allowed on fields only.
pub(crate) fn is_ref_type(t: &WType) -> bool {
    match t {
        WType::Ref(_) => true,
        WType::Option(inner) => is_ref_type(inner),
        _ => false,
    }
}

fn contains_exact(t: &Type) -> bool {
    match t {
        Type::Exact(_) => true,
        Type::Option(inner) => contains_exact(inner),
        _ => false,
    }
}

/// Resolves a wire type against the declarations. `entities` is the set of entity names.
pub(crate) fn resolve_type(
    t: &WType,
    enums: &BTreeMap<String, Arc<EnumInfo>>,
    nominals: &BTreeMap<String, Arc<NominalInfo>>,
    entities: &BTreeSet<String>,
    loc: &Loc,
    errs: &mut Vec<AdmissionError>,
) -> Option<Type> {
    let ty = match t {
        WType::Bool => Type::Bool,
        WType::Int => Type::Int,
        WType::Decimal => Type::Decimal,
        WType::String => Type::String,
        WType::Option(inner) => Type::Option(Box::new(resolve_type(
            inner, enums, nominals, entities, loc, errs,
        )?)),
        WType::Enum(name) => match enums.get(name) {
            Some(e) => Type::Enum(e.clone()),
            None => {
                err(errs, "UNKNOWN_TYPE", format!("unknown enum `{name}`"), loc);
                return None;
            }
        },
        WType::Nominal(name) => match nominals.get(name) {
            Some(n) => Type::Nominal(n.clone()),
            None => {
                err(
                    errs,
                    "UNKNOWN_TYPE",
                    format!("unknown nominal type `{name}`"),
                    loc,
                );
                return None;
            }
        },
        WType::Exact(None) => Type::Exact(Unit::Dimensionless),
        WType::Exact(Some(name)) => match nominals.get(name) {
            Some(n) if n.underlying == Prim::Decimal => Type::Exact(Unit::Nominal(n.clone())),
            Some(_) => {
                err(
                    errs,
                    "TYPE_MISMATCH",
                    format!("`exact` needs a decimal-based nominal; `{name}` is not one"),
                    loc,
                );
                return None;
            }
            None => {
                err(
                    errs,
                    "UNKNOWN_TYPE",
                    format!("unknown nominal type `{name}`"),
                    loc,
                );
                return None;
            }
        },
        WType::Id(entity) | WType::Ref(entity) | WType::Entity(entity) => {
            if !entities.contains(entity) {
                err(
                    errs,
                    "UNKNOWN_ENTITY",
                    format!("unknown entity `{entity}`"),
                    loc,
                );
                return None;
            }
            if matches!(t, WType::Id(_) | WType::Ref(_)) {
                Type::Id(entity.clone())
            } else {
                Type::Entity(entity.clone())
            }
        }
    };
    if let Err(code) = check_type(&ty) {
        err(
            errs,
            code.as_str(),
            format!("`{ty}` is not a valid type"),
            loc,
        );
        return None;
    }
    Some(ty)
}

pub(crate) fn declarations(w: &WModule, errs: &mut Vec<AdmissionError>) -> Decls {
    let mut type_names: BTreeSet<String> = BTreeSet::new();
    let mut claim = |name: &str, loc: &Loc, errs: &mut Vec<AdmissionError>| -> bool {
        if type_names.insert(name.to_string()) {
            true
        } else {
            err(
                errs,
                "DUPLICATE_NAME",
                format!("`{name}` is declared more than once"),
                loc,
            );
            false
        }
    };

    let mut enums = BTreeMap::new();
    for e in &w.enums {
        if !claim(&e.name, &e.loc, errs) {
            continue;
        }
        if e.values.is_empty() {
            err(
                errs,
                "DECODE_ERROR",
                format!("enum `{}` has no values", e.name),
                &e.loc,
            );
            continue;
        }
        let unique: BTreeSet<&String> = e.values.iter().collect();
        if unique.len() != e.values.len() {
            err(
                errs,
                "DUPLICATE_NAME",
                format!("enum `{}` repeats a value", e.name),
                &e.loc,
            );
            continue;
        }
        let h = hash::enum_decl(&e.name, &e.values);
        enums.insert(
            e.name.clone(),
            Arc::new(EnumInfo {
                name: e.name.clone(),
                values: e.values.clone(),
                hash: h,
            }),
        );
    }

    let mut nominals = BTreeMap::new();
    for n in &w.nominals {
        if !claim(&n.name, &n.loc, errs) {
            continue;
        }
        let Some(underlying) = prim_of(&n.underlying) else {
            err(
                errs,
                "TYPE_MISMATCH",
                format!("nominal `{}` must wrap a primitive", n.name),
                &n.loc,
            );
            continue;
        };
        let mut bits = 0u8;
        let mut ok = true;
        for op in &n.ops {
            match ops::parse(op) {
                Some(b) => bits |= b,
                None => {
                    err(
                        errs,
                        "DECODE_ERROR",
                        format!("unknown operation `{op}`"),
                        &n.loc,
                    );
                    ok = false;
                }
            }
        }
        if bits != 0 && !underlying.is_numeric() {
            err(
                errs,
                "TYPE_MISMATCH",
                format!(
                    "operations on `{}` require a numeric underlying type",
                    n.name
                ),
                &n.loc,
            );
            ok = false;
        }
        let scale = match n.scale {
            None => None,
            Some(_) if underlying != Prim::Decimal => {
                err(
                    errs,
                    "SCALE_NOT_DECIMAL",
                    format!(
                        "only decimal-based nominals can have a scale (`{}`)",
                        n.name
                    ),
                    &n.loc,
                );
                // Still declared (without a scale) to avoid follow-on errors.
                None
            }
            Some(x) => match u8::try_from(x) {
                Ok(x) if x <= 28 => Some(x),
                _ => {
                    err(
                        errs,
                        "SCALE_OUT_OF_RANGE",
                        format!("the scale of `{}` must be 0–28, not {x}", n.name),
                        &n.loc,
                    );
                    None
                }
            },
        };
        if !ok {
            continue;
        }
        let h = match scale {
            None => hash::nominal_decl(&n.name, underlying, bits),
            Some(sc) => hash::nominal_fixed_decl(&n.name, underlying, bits, sc),
        };
        nominals.insert(
            n.name.clone(),
            Arc::new(NominalInfo {
                name: n.name.clone(),
                underlying,
                ops: bits,
                scale,
                hash: h,
            }),
        );
    }

    let mut entity_names = BTreeSet::new();
    for e in &w.entities {
        if claim(&e.name, &e.loc, errs) {
            entity_names.insert(e.name.clone());
        }
    }

    let mut entities = BTreeMap::new();
    for e in &w.entities {
        if entities.contains_key(&e.name) {
            continue;
        }
        let mut fields = vec![("id".to_string(), Type::Id(e.name.clone()))];
        let mut references = Vec::new();
        let mut ok = true;
        for f in &e.fields {
            if f.name == "id" {
                err(
                    errs,
                    "RESERVED_NAME",
                    "`id` is reserved for the entity's identity",
                    &f.loc,
                );
                ok = false;
                continue;
            }
            if fields.iter().any(|(n, _)| *n == f.name) {
                err(
                    errs,
                    "DUPLICATE_NAME",
                    format!("field `{}` is declared twice", f.name),
                    &f.loc,
                );
                ok = false;
                continue;
            }
            match resolve_type(&f.ty, &enums, &nominals, &entity_names, &f.loc, errs) {
                Some(Type::Entity(_)) => {
                    err(errs, "TYPE_MISMATCH", "fields cannot hold entities", &f.loc);
                    ok = false;
                }
                Some(t) if contains_exact(&t) => {
                    err(
                        errs,
                        "EXACT_FIELD",
                        "fields hold fixed-scale values, never exact quantities; store a rescale",
                        &f.loc,
                    );
                    ok = false;
                }
                Some(t) => {
                    if is_ref_type(&f.ty) {
                        references.push(f.name.clone());
                    }
                    fields.push((f.name.clone(), t));
                }
                None => ok = false,
            }
        }
        if ok {
            let h = hash::entity(&e.name, &fields, &references);
            let field_locs = e.fields.iter().map(|f| f.loc.clone()).collect();
            entities.insert(
                e.name.clone(),
                EntityItem {
                    name: e.name.clone(),
                    fields,
                    hash: h,
                    loc: e.loc.clone(),
                    field_locs,
                    references,
                },
            );
        }
    }

    let decls = Decls {
        commands: BTreeMap::new(),
        enums,
        nominals,
        entities,
        reads: w.reads.iter().map(|r| r.name.clone()).collect(),
    };
    // Behavior refers to the information model; checking it against a broken model would
    // only report follow-on errors.
    if !errs.is_empty() {
        return decls;
    }

    // New-profile command declarations share one public item namespace. Do not
    // reinterpret the distinct legacy type/behavior namespace rules.
    if w.profile == crate::semantic::types::SemanticProfile::CommandIntents {
        let names = w
            .enums
            .iter()
            .map(|x| (&x.name, &x.loc))
            .chain(w.nominals.iter().map(|x| (&x.name, &x.loc)))
            .chain(w.entities.iter().map(|x| (&x.name, &x.loc)))
            .chain(w.derived.iter().map(|x| (&x.name, &x.loc)))
            .chain(w.invariants.iter().map(|x| (&x.name, &x.loc)))
            .chain(w.global_invariants.iter().map(|x| (&x.name, &x.loc)))
            .chain(w.constraints.iter().map(|x| (&x.name, &x.loc)))
            .chain(w.actions.iter().map(|x| (&x.name, &x.loc)))
            .chain(w.reads.iter().map(|x| (&x.name, &x.loc)))
            .chain(w.commands.iter().map(|x| (&x.name, &x.loc)));
        let mut claimed = BTreeSet::new();
        for (name, loc) in names {
            if !crate::wire::is_identifier(name) {
                err(errs, "DECODE_ERROR", "name is not an identifier", loc);
            }
            if !claimed.insert(name) {
                err(
                    errs,
                    "DUPLICATE_NAME",
                    format!("`{name}` is declared more than once"),
                    loc,
                );
            }
        }
    }
    let mut decls = decls;
    for command in &w.commands {
        let mut names = BTreeSet::new();
        let mut fields = Vec::new();
        let before = errs.len();
        for field in &command.fields {
            if !crate::wire::is_identifier(&field.name) {
                err(
                    errs,
                    "DECODE_ERROR",
                    "command field is not an identifier",
                    &field.loc,
                );
            }
            if !names.insert(field.name.clone()) {
                err(
                    errs,
                    "DUPLICATE_NAME",
                    format!("command field `{}` is repeated", field.name),
                    &field.loc,
                );
            }
            if is_ref_type(&field.ty) {
                err(
                    errs,
                    "TYPE_MISMATCH",
                    "Ref is not a command payload type; use inert Id",
                    &field.loc,
                );
                continue;
            }
            let Some(ty) = resolve_type(
                &field.ty,
                &decls.enums,
                &decls.nominals,
                &entity_names,
                &field.loc,
                errs,
            ) else {
                continue;
            };
            if !crate::commands::supported_scalar(&ty) {
                err(
                    errs,
                    "TYPE_MISMATCH",
                    "command payload fields must be supported stored scalar types",
                    &field.loc,
                );
                continue;
            }
            fields.push(crate::commands::CommandField {
                name: field.name.clone(),
                ty,
                loc: field.loc.clone(),
            });
        }
        if errs.len() != before {
            continue;
        }
        fields.sort_by(|a, b| a.name.cmp(&b.name));
        let product: Vec<_> = fields
            .iter()
            .map(|f| (f.name.clone(), f.ty.clone()))
            .collect();
        match hash::command_declaration(&command.name, &product) {
            Ok(hash) => {
                decls.commands.insert(
                    command.name.clone(),
                    Arc::new(crate::commands::CommandDeclaration {
                        name: command.name.clone(),
                        fields,
                        hash,
                        loc: command.loc.clone(),
                    }),
                );
            }
            Err(e) => err(errs, e.code, e.message, &command.loc),
        }
    }

    let mut behavior_names = BTreeSet::new();
    let mut claim_behavior = |name: &str, loc: &Loc, errs: &mut Vec<AdmissionError>| {
        if !behavior_names.insert(name.to_string()) {
            err(
                errs,
                "DUPLICATE_NAME",
                format!("`{name}` is declared more than once"),
                loc,
            );
        }
    };

    for d in &w.derived {
        claim_behavior(&d.name, &d.loc, errs);
        let _ = params(&decls, &d.params, ParamSite::Derived, &d.loc, errs);
    }
    for i in &w.invariants {
        claim_behavior(&i.name, &i.loc, errs);
        if !decls.entities.contains_key(&i.entity) {
            err(
                errs,
                "UNKNOWN_ENTITY",
                format!("unknown entity `{}`", i.entity),
                &i.loc,
            );
        }
    }
    for g in &w.global_invariants {
        claim_behavior(&g.name, &g.loc, errs);
    }
    for c in &w.constraints {
        claim_behavior(&c.name, &c.loc, errs);
        if !decls.entities.contains_key(&c.entity) {
            err(
                errs,
                "UNKNOWN_ENTITY",
                format!("unknown entity `{}`", c.entity),
                &c.loc,
            );
        }
    }
    for a in &w.actions {
        claim_behavior(&a.name, &a.loc, errs);
        let _ = params(&decls, &a.params, action_site(a), &a.loc, errs);
    }
    decls
}

#[derive(Clone, Copy, PartialEq, Eq)]
pub(crate) enum ParamSite {
    Derived,
    Action,
    /// An action with a creation (feature 006): it may have no state parameter.
    CreatingAction,
    /// A read (feature 010): roles like an action's, and no parameter at all is fine.
    Read,
}

/// The parameter site of an action: one with a creation may have no state parameter.
pub(crate) fn action_site(a: &crate::wire::WAction) -> ParamSite {
    if a.lifecycle
        .iter()
        .any(|l| matches!(l, crate::wire::WLifecycle::Create { .. }))
    {
        ParamSite::CreatingAction
    } else {
        ParamSite::Action
    }
}

/// Resolves a parameter list, reporting problems at the declaration's location.
pub(crate) fn params(
    decls: &Decls,
    ps: &[WParam],
    site: ParamSite,
    loc: &Loc,
    errs: &mut Vec<AdmissionError>,
) -> Option<Vec<Param>> {
    let entity_names: BTreeSet<String> = decls.entities.keys().cloned().collect();
    let mut out: Vec<Param> = Vec::new();
    let mut ok = true;
    for p in ps {
        if out.iter().any(|q| q.name == p.name) {
            err(
                errs,
                "DUPLICATE_NAME",
                format!("parameter `{}` is declared twice", p.name),
                loc,
            );
            ok = false;
            continue;
        }
        if is_ref_type(&p.ty) {
            err(
                errs,
                "TYPE_MISMATCH",
                format!(
                    "parameter `{}`: `Ref` is a field type; use `Id` for identities",
                    p.name
                ),
                loc,
            );
            ok = false;
            continue;
        }
        let Some(ty) = resolve_type(
            &p.ty,
            &decls.enums,
            &decls.nominals,
            &entity_names,
            loc,
            errs,
        ) else {
            ok = false;
            continue;
        };
        if contains_exact(&ty) {
            err(
                errs,
                "TYPE_MISMATCH",
                format!(
                    "parameter `{}` cannot be an exact quantity; pass a fixed-scale value",
                    p.name
                ),
                loc,
            );
            ok = false;
            continue;
        }
        let role = match (site, p.role) {
            (ParamSite::Derived, None) => ParamRole::Read,
            (ParamSite::Derived, Some(_)) => {
                err(
                    errs,
                    "DECODE_ERROR",
                    "derived value parameters have no role",
                    loc,
                );
                ok = false;
                continue;
            }
            (ParamSite::Action | ParamSite::CreatingAction | ParamSite::Read, Some(r)) => r.into(),
            (ParamSite::Action | ParamSite::CreatingAction | ParamSite::Read, None) => {
                err(
                    errs,
                    "DECODE_ERROR",
                    format!("parameter `{}` needs a role", p.name),
                    loc,
                );
                ok = false;
                continue;
            }
        };
        let entity_required = matches!(role, ParamRole::Read | ParamRole::State);
        if entity_required && !matches!(ty, Type::Entity(_)) {
            err(
                errs,
                "TYPE_MISMATCH",
                format!("parameter `{}` must be an entity", p.name),
                loc,
            );
            ok = false;
            continue;
        }
        out.push(Param {
            name: p.name.clone(),
            role,
            ty,
        });
    }
    let needed = match site {
        ParamSite::Derived => true,
        ParamSite::Action => out.iter().any(|p| p.role == ParamRole::State),
        ParamSite::CreatingAction | ParamSite::Read => true,
    };
    if ok && !needed {
        let what = match site {
            ParamSite::Derived => "a derived value needs at least one entity parameter",
            ParamSite::Action | ParamSite::CreatingAction | ParamSite::Read => {
                "an action needs at least one state parameter or a creation"
            }
        };
        err(errs, "ARITY_MISMATCH", what, loc);
        ok = false;
    }
    ok.then_some(out)
}
