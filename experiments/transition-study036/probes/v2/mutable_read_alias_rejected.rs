#![forbid(unsafe_code)]
pub fn invalid() {
    let mut value = false;
    let child = &mut value;
    value = true;
    *child = false;
}
