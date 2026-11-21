module
public import CORE036_MODULE_PREFIX.Types
@[expose] public section

/- Unadmitted data candidate. Import after the actual unchanged Value
representation; relocation of these two external bindings must be declared
and checked against the exact complete generated-type dependency context. -/

@[rust_type "serde_json::map::Keys" (body := .opaque)]
structure serde_json.map.Keys where
  remaining : List String

@[rust_type "serde_json::map::Iter" (body := .opaque)]
structure serde_json.map.Iter where
  remaining : List (String × transition_study036.serde_json.value.Value)
