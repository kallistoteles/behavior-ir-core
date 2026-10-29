//! Native A: retained Core executor and checked disposable derived views.
//! Whole-state J diagnostics are intentionally retained; no sublinear claim.
use crate::{fixtures::Config,reference::Reference,types::*,views::Views};
pub struct Maintained{reference:Reference,views:Views}
impl Maintained{
    pub fn new(config:Config,n:usize)->Result<Self>{let reference=Reference::new(config,n)?;let views=Views::initialize(&reference.snapshot()?)?;Ok(Self{reference,views})}
    pub fn execute(&mut self,operation:Operation)->Result<ReferenceObservation>{
        let before=self.reference.snapshot()?;
        if !self.views.matches(&before){return Err(StudyError::Integrity("A has no valid complete views at the requested head".into()));}
        if let Operation::Probe{threshold,..}=&operation{self.views.query(&before,*threshold)?;}
        let actual=self.reference.execute(operation)?;self.views.advance(&actual)?;Ok(actual)
    }
    pub fn snapshot(&self)->Result<OperationalState>{self.reference.snapshot()}
    pub fn view(&self)->&Views{&self.views}
    pub fn lose_views(&mut self){self.views.valid=false;}
    pub fn rebuild(&mut self)->Result<()>{self.views=Views::initialize(&self.reference.snapshot()?)?;Ok(())}
}
