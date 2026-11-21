#![forbid(unsafe_code)]
pub trait Step {
    fn step(&mut self, bytes: &[u8]) -> std::io::Result<usize>;
    #[inline(never)]
    fn twice(&mut self, bytes: &[u8]) -> std::io::Result<usize> {
        match self.step(bytes) {
            Ok(_) => self.step(bytes),
            Err(error) => Err(error),
        }
    }
}
pub struct State { pub seen: bool }
impl Step for State {
    #[inline(never)]
    fn step(&mut self, bytes: &[u8]) -> std::io::Result<usize> {
        let previously_seen = self.seen;
        self.seen = true;
        Ok(if previously_seen { bytes.len() } else { 0 })
    }
}
#[inline(never)]
pub fn run(mut state: State, bytes: &[u8]) -> (std::io::Result<usize>, State) {
    let result = state.twice(bytes);
    (result, state)
}
