#![forbid(unsafe_code)]
pub trait Step {
    fn step(&mut self);
    #[inline(never)]
    fn twice(&mut self) { self.step(); self.step(); }
}
pub struct State { pub on: bool, pub seen: bool }
impl Step for State {
    #[inline(never)]
    fn step(&mut self) { self.seen = self.on; self.on = !self.on; }
}
#[inline(never)]
pub fn run(mut state: State) -> State { state.twice(); state }
