use crate::{artifacts::{parse_json,DOCUMENT_BOUND},error::{Result,StudyError,library}};
use serde_json::Value;
use std::{fs::{File,OpenOptions},io::{Read,Write},path::Path};
pub fn read(path:&Path)->Result<Value>{
 let mut bytes=vec![];File::open(path)?.take((DOCUMENT_BOUND+1)as u64).read_to_end(&mut bytes)?;parse_json(&bytes,DOCUMENT_BOUND).map_err(library)
}
pub fn write(path:&Path,value:&Value)->Result<()>{let mut f=OpenOptions::new().write(true).create_new(true).open(path)?;serde_json::to_writer(&mut f,value)?;f.write_all(b"\n")?;f.sync_all()?;Ok(())}
pub fn text<'a>(value:&'a Value,key:&str)->Result<&'a str>{value.get(key).and_then(Value::as_str).ok_or(StudyError::Prerequisite("MissingStringField"))}
