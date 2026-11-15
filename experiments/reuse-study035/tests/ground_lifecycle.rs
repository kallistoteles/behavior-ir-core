use reuse_study035::{ground::{Ground,Status},reference,error::Result};
#[test]fn supplied_report_is_not_authority_then_actual_check_establishes()->Result<()>{
 let mut g=Ground::supplied(reference::parent("growth-D1")?);
 assert_eq!(g.status(),Status::SuppliedUnverified);
 assert!(g.invoke(&reference::request("finish")).is_err());
 g.check(super::checked()?,&super::expected()?)?;
 assert_eq!(g.status(),Status::Established,"actual checked parent must establish opaque authority");
 Ok(())
}
