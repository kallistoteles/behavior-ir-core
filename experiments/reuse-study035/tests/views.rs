use reuse_study035::{ground::Ground,reference,error::Result};
use serde_json::json;
#[test]fn exact_views_exist_and_point_update_matches_reconstruction()->Result<()>{
 let expected=super::expected()?;let mut g=Ground::supplied(reference::parent("growth-D1")?);g.check(super::checked()?,&expected)?;
 g.select_retention(true)?;g.enable_views(true)?;g.set_work(true);
 assert!(g.views_active(),"V must seed actual checked views");
 let result=g.invoke(&reference::request("finish"))?;
 assert_eq!(g.view_state(),Some(result["post_state"].clone()));
 assert_eq!(g.diagnostics()["view_point_updates"],1);
 Ok(())
}
#[test]fn corrupt_or_supplied_view_cannot_authorize_wrong_result()->Result<()>{
 let expected=super::expected()?;let mut g=Ground::supplied(reference::parent("growth-D1")?);g.check(super::checked()?,&expected)?;
 g.select_retention(true)?;g.enable_views(true)?;g.set_work(true);g.corrupt_views_for_control();
 g.supply_views(&json!({"checked":true,"children":{},"active_by_owner":{}}))?;
 assert!(!g.views_active(),"imported checked flag cannot establish a view");
 let result=g.invoke(&reference::request("finish"))?;
 reuse_study035::observation::compare(&result,&expected["expected"])?;
 assert!(g.diagnostics()["view_seed_rows"].as_u64().is_some_and(|n|n>=2),"corruption needs actual rebuild or checked fallback");Ok(())
}
#[test]fn new_member_and_reference_fallback_invalidate_old_index()->Result<()>{
 let expected=super::expected()?;let mut g=Ground::supplied(reference::parent("growth-D1")?);g.check(super::checked()?,&expected)?;
 g.enable_views(true)?;g.select_retention(true)?;g.set_work(true);
 let mut ordinary=reference::parent("growth-D1")?;
 let finished=g.invoke(&reference::request("finish"))?;
 let original=reference::step(&mut ordinary.store,&ordinary.module,&ordinary.analysis,&reference::request("finish"))?;
 reuse_study035::observation::compare(&finished,&original)?;
 assert_eq!(g.view_active_children("p0000"),Some(json!([])),"old active bucket must actually be empty");
 let create=json!({"format":"behavior.invocation.v1","capability":"create_child","bindings":{"p":{"entity":"Parent","id":"p0000"}},"input":{"new_id":"c0001"},"context":{}});
 let candidate=g.invoke(&create)?;let original=reference::step(&mut ordinary.store,&ordinary.module,&ordinary.analysis,&create)?;
 reuse_study035::observation::compare(&candidate,&original)?;assert_eq!(candidate["post_state"]["children"]["c0001"]["phase"],"Active");
 assert_eq!(g.view_active_children("p0000"),Some(json!(["c0001"])),"new active member must appear in the actual maintained index");
 assert!(g.diagnostics()["fallback_invalidations"].as_u64().is_some_and(|n|n>0));
 let stop=json!({"format":"behavior.invocation.v1","capability":"stop","bindings":{"p":{"entity":"Parent","id":"p0000"}},"input":{},"context":{}});
 let candidate=g.invoke(&stop)?;let original=reference::step(&mut ordinary.store,&ordinary.module,&ordinary.analysis,&stop)?;reuse_study035::observation::compare(&candidate,&original)?;
 assert!(candidate["bundle"].is_null(),"new active member must block stop");Ok(())
}

#[test]fn confirmed_version_view_equals_independent_full_original_reconstruction()->Result<()>{
 let expected=super::expected()?;let mut g=Ground::supplied(reference::parent("growth-D1")?);g.check(super::checked()?,&expected)?;
 g.enable_views(true)?;g.select_retention(true)?;g.set_work(true);
 g.invoke(&reference::request("finish"))?;g.invoke(&reference::request("finish"))?;
 let audit=g.audit_original()?;assert_eq!(audit["maintained_views_equal_full_reconstruction"],true);
 assert_eq!(audit["core_version_view_equal_full_reconstruction"],true);assert_eq!(audit["version_cache_reused_without_canonical_row_walk"],true);
 assert_eq!(audit["original_property_outcomes"]["status"],"Valid");
 assert_eq!(g.diagnostics()["versions"]["confirmed_point_updates"],1,"unchanged content must not invent a new entity version");Ok(())
}
