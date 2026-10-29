//! Full fixed-shape constraints for five typed operations in the bounded world.
use super::{state::{Fr,MachineState,Shape,StepWitness,ATTEMPT_TAG},commitment::*};
use crate::types::{Result,StudyError};
use ff::Field;
use nova_snark::{frontend::{num::AllocatedNum,sha256,test_cs::TestConstraintSystem,ConstraintSystem,SynthesisError},traits::circuit::StepCircuit};
#[derive(Clone,Debug)]
pub struct TransitionCircuit {pub shape:Shape,pub witness:StepWitness,pub proposed:Option<MachineState>}
fn number<CS:ConstraintSystem<Fr>>(cs:CS,value:u64)->SResult<Num>{Num::alloc(cs,||Ok(Fr::from(value)))}
impl StepCircuit<Fr> for TransitionCircuit {
    fn arity(&self)->usize{self.shape.arity()}
    fn synthesize<CS:ConstraintSystem<Fr>>(&self,cs:&mut CS,z:&[AllocatedNum<Fr>])->SResult<Vec<AllocatedNum<Fr>>>{
        if self.shape.validate().is_err() || z.len()!=self.arity(){return Err(SynthesisError::Unsatisfiable("invalid circuit shape or encoding".into()));}
        let one=constant(cs.namespace(||"one"),1)?;
        let header=self.shape.header().map_err(|_|SynthesisError::Unsatisfiable("invalid circuit shape or encoding".into()))?;
        for(i,expected)in header.iter().enumerate(){
            let k=Num::alloc(cs.namespace(||format!("header_constant_{i}")),||Ok(*expected))?;
            cs.enforce(||format!("header_fixed_{i}"),|lc|lc+CS::one(),|lc|lc+k.get_variable(),|lc|lc+(*expected,CS::one()));
            equal(cs.namespace(||format!("header_bound_{i}")),&z[i],&k);
            let _=bits(cs.namespace(||format!("header_bits_{i}")),&z[i],128)?;
        }
        let attempts_bits=bits(cs.namespace(||"attempts_range"),&z[6],64)?;
        let commits_bits=bits(cs.namespace(||"commits_range"),&z[7],64)?;
        let _=bits(cs.namespace(||"commands_range"),&z[8],64)?;
        let bad_counter=less(cs.namespace(||"commit_not_after_attempt"),&attempts_bits.numbers,&commits_bits.numbers)?;
        enforce_zero(cs.namespace(||"counter_order"),&bad_counter);
        let command_invariant=linear(cs.namespace(||"command_count_meaning"),&[(&z[7],Fr::from(self.shape.commands)),(&z[8],-Fr::ONE)],Fr::ZERO)?;
        enforce_zero(cs.namespace(||"command_count_exact"),&command_invariant);
        let digest0=bits(cs.namespace(||"digest_lo"),&z[9],128)?;
        let digest1=bits(cs.namespace(||"digest_hi"),&z[10],128)?;
        let _=bits(cs.namespace(||"last_result_range"),&z[11],2)?;
        let opcode=number(cs.namespace(||"opcode"),u64::from(self.witness.opcode))?;
        let opcode_bits=bits(cs.namespace(||"opcode_bits"),&opcode,8)?;
        let flags=(0..5).map(|i|alloc_bit(cs.namespace(||format!("operation_{i}")),Some(usize::from(self.witness.opcode)==i))).collect::<SResult<Vec<_>>>()?;
        let flag_sum=sum(cs.namespace(||"operation_sum"),&flags)?;
        equal(cs.namespace(||"exactly_one_operation"),&flag_sum,&one);
        let weighted=linear(cs.namespace(||"operation_encoding"),&flags.iter().enumerate().map(|(i,n)|(n,Fr::from(i as u64))).collect::<Vec<_>>(),Fr::ZERO)?;
        equal(cs.namespace(||"operation_tag_bound"),&weighted,&opcode);
        let index=number(cs.namespace(||"index"),self.witness.index as u64)?;
        let index_bits=bits(cs.namespace(||"index_bits"),&index,32)?;
        let selectors=(0..self.shape.catalog.len()).map(|i|alloc_bit(cs.namespace(||format!("id_{i}")),Some(self.witness.index==i))).collect::<SResult<Vec<_>>>()?;
        let selector_sum=sum(cs.namespace(||"id_sum"),&selectors)?;
        equal(cs.namespace(||"exactly_one_id"),&selector_sum,&one);
        let weighted_index=linear(cs.namespace(||"index_encoding"),&selectors.iter().enumerate().map(|(i,n)|(n,Fr::from(i as u64))).collect::<Vec<_>>(),Fr::ZERO)?;
        equal(cs.namespace(||"id_index_bound"),&weighted_index,&index);
        let no_id=linear(cs.namespace(||"id_unused"),&[(&flags[3],Fr::ONE),(&flags[4],Fr::ONE)],Fr::ZERO)?;
        let unused_id=no_id.mul(cs.namespace(||"zero_unused_id"),&index)?;enforce_zero(cs.namespace(||"canonical_unused_id"),&unused_id);
        let value=number(cs.namespace(||"input_value"),u64::from_le_bytes(self.witness.value.to_le_bytes()))?;
        let value_bits=bits(cs.namespace(||"input_value_bits"),&value,64)?;
        let threshold=number(cs.namespace(||"threshold"),u64::from_le_bytes(self.witness.threshold.to_le_bytes()))?;
        let threshold_bits=bits(cs.namespace(||"threshold_bits"),&threshold,64)?;
        let maximum=number(cs.namespace(||"maximum"),u64::from_le_bytes(self.witness.max_matches.to_le_bytes()))?;
        let maximum_bits=bits(cs.namespace(||"maximum_bits"),&maximum,64)?;
        let not_set=not(cs.namespace(||"not_set"),&flags[1])?;
        let unused_value=not_set.mul(cs.namespace(||"unused_value"),&value)?;enforce_zero(cs.namespace(||"canonical_unused_value"),&unused_value);
        let not_probe=not(cs.namespace(||"not_probe"),&flags[4])?;
        for(name,n)in[("threshold",&threshold),("maximum",&maximum)]{
            let unused=not_probe.mul(cs.namespace(||format!("unused_{name}")),n)?;enforce_zero(cs.namespace(||format!("canonical_{name}")),&unused);
        }
        let value_zero=is_zero(cs.namespace(||"value_zero"),&value)?;
        let value_nonzero=not(cs.namespace(||"value_nonzero"),&value_zero)?;
        let value_nonsigned=not(cs.namespace(||"value_positive_sign"),&value_bits.numbers[63])?;
        let value_positive=value_nonzero.mul(cs.namespace(||"value_positive"),&value_nonsigned)?;
        let threshold_positive_sign=not(cs.namespace(||"threshold_sign"),&threshold_bits.numbers[63])?;
        let mut live=Vec::new();let mut used=Vec::new();let mut selected_live=Vec::new();let mut selected_used=Vec::new();let mut matching=Vec::new();
        for(i,selector)in selectors.iter().enumerate(){
            let base=12+3*i;
            let lbits=bits(cs.namespace(||format!("live_{i}")),&z[base],1)?;
            let ubits=bits(cs.namespace(||format!("used_{i}")),&z[base+1],1)?;
            let xbits=bits(cs.namespace(||format!("value_{i}")),&z[base+2],64)?;
            let l=lbits.numbers[0].clone();let u=ubits.numbers[0].clone();
            let not_used=not(cs.namespace(||format!("not_used_{i}")),&u)?;
            let live_unused=l.mul(cs.namespace(||format!("live_used_{i}")),&not_used)?;enforce_zero(cs.namespace(||format!("used_requirement_{i}")),&live_unused);
            let not_live=not(cs.namespace(||format!("not_live_{i}")),&l)?;
            let absent_value=not_live.mul(cs.namespace(||format!("absent_value_{i}")),&z[base+2])?;enforce_zero(cs.namespace(||format!("canonical_absent_{i}")),&absent_value);
            let sign=l.mul(cs.namespace(||format!("positive_sign_{i}")),&xbits.numbers[63])?;enforce_zero(cs.namespace(||format!("positive_sign_required_{i}")),&sign);
            let zero=is_zero(cs.namespace(||format!("zero_value_{i}")),&z[base+2])?;
            let live_zero=l.mul(cs.namespace(||format!("nonzero_value_{i}")),&zero)?;enforce_zero(cs.namespace(||format!("positive_required_{i}")),&live_zero);
            selected_live.push(selector.mul(cs.namespace(||format!("selected_live_{i}")),&l)?);
            selected_used.push(selector.mul(cs.namespace(||format!("selected_used_{i}")),&u)?);
            let lt=less(cs.namespace(||format!("threshold_compare_{i}")),&xbits.numbers,&threshold_bits.numbers)?;
            let lt=lt.mul(cs.namespace(||format!("threshold_signed_{i}")),&threshold_positive_sign)?;
            matching.push(lt.mul(cs.namespace(||format!("matches_live_{i}")),&l)?);
            live.push(l);used.push(u);
        }
        let selected_live=sum(cs.namespace(||"selected_live"),&selected_live)?;
        let selected_used=sum(cs.namespace(||"selected_used"),&selected_used)?;
        let population=sum(cs.namespace(||"population"),&live)?;
        let population_bits=bits(cs.namespace(||"population_bits"),&population,6)?;
        let capacity=constant(cs.namespace(||"capacity"),self.shape.capacity as u64)?;
        let capacity_bits=bits(cs.namespace(||"capacity_bits"),&capacity,6)?;
        let too_many=less(cs.namespace(||"population_valid"),&capacity_bits.numbers,&population_bits.numbers)?;
        enforce_zero(cs.namespace(||"population_bound"),&too_many);
        let can_create=less(cs.namespace(||"population_can_grow"),&population_bits.numbers,&capacity_bits.numbers)?;
        let match_count=sum(cs.namespace(||"match_count"),&matching)?;
        let match_bits=bits(cs.namespace(||"match_count_bits"),&match_count,64)?;
        let exceeds=less(cs.namespace(||"maximum_compare"),&maximum_bits.numbers,&match_bits.numbers)?;
        let not_exceeds=not(cs.namespace(||"maximum_not_exceeded"),&exceeds)?;
        let nonnegative_max=not(cs.namespace(||"maximum_nonnegative"),&maximum_bits.numbers[63])?;
        let probe_allowed=not_exceeds.mul(cs.namespace(||"probe_allowed"),&nonnegative_max)?;
        let not_used=not(cs.namespace(||"selected_not_used"),&selected_used)?;
        let fresh=flags[0].mul(cs.namespace(||"fresh"),&not_used)?;
        let create_ok=fresh.mul(cs.namespace(||"create_allowed"),&can_create)?;
        let set_existing=flags[1].mul(cs.namespace(||"set_existing"),&selected_live)?;
        let set_ok=set_existing.mul(cs.namespace(||"set_allowed"),&value_positive)?;
        let remove_ok=flags[2].mul(cs.namespace(||"remove_allowed"),&selected_live)?;
        let probe_ok=flags[4].mul(cs.namespace(||"probe_accepted"),&probe_allowed)?;
        let allow=sum(cs.namespace(||"allow"),&[create_ok.clone(),set_ok.clone(),remove_ok.clone(),flags[3].clone(),probe_ok])?;
        let not_live=not(cs.namespace(||"selected_missing"),&selected_live)?;
        let bound_operation=sum(cs.namespace(||"bound_operation"),&[flags[1].clone(),flags[2].clone()])?;
        let missing=bound_operation.mul(cs.namespace(||"missing"),&not_live)?;
        let used_refusal=flags[0].mul(cs.namespace(||"used_refusal"),&selected_used)?;
        let deny=linear(cs.namespace(||"deny"),&[(&allow,-Fr::ONE),(&missing,-Fr::ONE),(&used_refusal,-Fr::ONE)],Fr::ONE)?;
        let result=linear(cs.namespace(||"selected_result"),&[(&deny,Fr::ONE),(&used_refusal,Fr::from(2)),(&missing,Fr::from(3))],Fr::ZERO)?;
        let result_bits=bits(cs.namespace(||"result_byte"),&result,8)?;
        let emitted=linear(cs.namespace(||"emitted"),&[(&allow,Fr::from(self.shape.commands))],Fr::ZERO)?;
        let emitted_bits=bits(cs.namespace(||"emitted_bits"),&emitted,32)?;
        let attempts=linear(cs.namespace(||"next_attempts"),&[(&z[6],Fr::ONE)],Fr::ONE)?;
        let commits=linear(cs.namespace(||"next_commits"),&[(&z[7],Fr::ONE),(&allow,Fr::ONE)],Fr::ZERO)?;
        let commands=linear(cs.namespace(||"next_commands"),&[(&z[8],Fr::ONE),(&emitted,Fr::ONE)],Fr::ZERO)?;
        for(name,n)in[("attempts",&attempts),("commits",&commits),("commands",&commands)]{let _=bits(cs.namespace(||format!("next_{name}_range")),n,64)?;}
        let mut payload=constant_bytes(ATTEMPT_TAG);payload.extend(bytes_be(&digest0.booleans));payload.extend(bytes_be(&digest1.booleans));
        for encoded in [&opcode_bits.booleans,&index_bits.booleans,&value_bits.booleans,&threshold_bits.booleans,&maximum_bits.booleans,&result_bits.booleans,&emitted_bits.booleans]{payload.extend(bytes_be(encoded));}
        let digest=sha256(cs.namespace(||"attempt_sha256"),&payload)?;
        let digest_le=bytes_be(&digest);
        let digest_lo=pack(cs.namespace(||"next_digest_lo"),&digest_le[..128])?;
        let digest_hi=pack(cs.namespace(||"next_digest_hi"),&digest_le[128..])?;
        let mut next=z[..6].to_vec();next.extend([attempts,commits,commands,digest_lo,digest_hi,result]);
        for(i,selector)in selectors.iter().enumerate(){
            let base=12+3*i;
            let create=create_ok.mul(cs.namespace(||format!("create_slot_{i}")),selector)?;
            let remove=remove_ok.mul(cs.namespace(||format!("remove_slot_{i}")),selector)?;
            let set=set_ok.mul(cs.namespace(||format!("set_slot_{i}")),selector)?;
            let next_live=linear(cs.namespace(||format!("next_live_{i}")),&[(&live[i],Fr::ONE),(&create,Fr::ONE),(&remove,-Fr::ONE)],Fr::ZERO)?;
            let next_used=linear(cs.namespace(||format!("next_used_{i}")),&[(&used[i],Fr::ONE),(&create,Fr::ONE)],Fr::ZERO)?;
            let write=sum(cs.namespace(||format!("write_slot_{i}")),&[create.clone(),remove,set.clone()])?;
            let keep=not(cs.namespace(||format!("keep_slot_{i}")),&write)?;
            let old=keep.mul(cs.namespace(||format!("kept_value_{i}")),&z[base+2])?;
            let assigned=set.mul(cs.namespace(||format!("set_value_{i}")),&value)?;
            let next_value=sum(cs.namespace(||format!("next_value_{i}")),&[old,create,assigned])?;
            next.extend([next_live,next_used,next_value]);
        }
        let proposed=self.proposed.as_ref().map(|p|p.to_fields(&self.shape)).transpose().map_err(|_|SynthesisError::Unsatisfiable("invalid circuit shape or encoding".into()))?;
        let mut out=Vec::new();
        for(i,expected)in next.iter().enumerate(){
            let assignment=proposed.as_ref().and_then(|p|p.get(i)).copied().or_else(||expected.get_value());
            let actual=Num::alloc(cs.namespace(||format!("proposed_{i}")),||assignment.ok_or(SynthesisError::AssignmentMissing))?;
            equal(cs.namespace(||format!("proposed_exact_{i}")),expected,&actual);out.push(actual);
        }
        Ok(out)
    }
}
pub fn check_step(shape:&Shape,state:&MachineState,step:&StepWitness,proposed:&MachineState)->Result<bool>{
    state.validate(shape)?;
    if proposed.live.len()!=shape.catalog.len()||proposed.used.len()!=shape.catalog.len()||proposed.values.len()!=shape.catalog.len(){return Ok(false);}
    let mut cs=TestConstraintSystem::<Fr>::new();
    let inputs=state.to_fields(shape)?.into_iter().enumerate().map(|(i,v)|Num::alloc(cs.namespace(||format!("input_{i}")),||Ok(v))).collect::<SResult<Vec<_>>>().map_err(|e|StudyError::Integrity(format!("input synthesis {e:?}")))?;
    let circuit=TransitionCircuit{shape:shape.clone(),witness:step.clone(),proposed:Some(proposed.clone())};
    circuit.synthesize(&mut cs,&inputs).map_err(|e|StudyError::Integrity(format!("step synthesis {e:?}")))?;
    Ok(cs.is_satisfied())
}
