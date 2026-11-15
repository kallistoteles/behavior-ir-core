#![allow(clippy::unwrap_used)]
use assurance_study034::{capture,fixtures,io};
use serde_json::json;
use std::{hint::black_box,path::Path,time::Instant};
#[test]
fn component002_immutable_public_methods_match_original_subject() {
 let packet_path=std::env::var("CORE034_COMPONENT_PACKET").unwrap();
 let expected_path=std::env::var("CORE034_COMPONENT_EXPECTED").unwrap();
 let output=std::env::var("CORE034_COMPONENT_OUT").unwrap();
 let bytes=io::read_bytes(Path::new(&packet_path),64*1024*1024).unwrap();
 let packet=capture::decode_packet(&bytes).unwrap();let expected=io::read(Path::new(&expected_path)).unwrap();
 let record=&packet.commits.last().unwrap().record;let record_hash=expected["endpoint"]["record"].as_str().unwrap();
 assert_eq!(record.hash().unwrap(),record_hash);
 let module=fixtures::module(false,false).unwrap();let behavior=module.behavior_version();
 let wire=behavior_engine::serialize::to_wire_json(&module);
 let mut hashes=vec![];let mut clones=vec![];let mut module_hashes=vec![];let mut module_wire=vec![];
 for _ in 0..100 {
  let start=Instant::now();let value=black_box(record).hash().unwrap();hashes.push(start.elapsed().as_nanos()as u64);assert_eq!(value,record_hash);
  let start=Instant::now();let value=black_box(record).clone();clones.push(start.elapsed().as_nanos()as u64);assert_eq!(&value,record);
  let start=Instant::now();let value=black_box(&module).behavior_version();module_hashes.push(start.elapsed().as_nanos()as u64);assert_eq!(value,behavior);
  let start=Instant::now();let value=behavior_engine::serialize::to_wire_json(black_box(&module));module_wire.push(start.elapsed().as_nanos()as u64);assert_eq!(value,wire);
 }
 let result=json!({"format":"core034.component-diagnostic.v1","record_hash_ns":hashes,"record_clone_ns":clones,"module_identity_ns":module_hashes,"module_wire_ns":module_wire,"record_json_bytes":serde_json::to_vec(record).unwrap().len(),"expected_record_hash":record_hash,"all_original_results_matched":true,"scope":"100 immutable public-method call observations; result assertions/drop occur after timers. Component microdiagnostics, not complete transitions, SLA percentiles or additive transaction-cost estimates.","product_adoption":"unactivated"});
 io::write(Path::new(&output),&result).unwrap();
}
