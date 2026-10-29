//! Constrained arithmetic/bit encodings. All digest limbs are exactly 128 bits.
use super::state::Fr;
use ff::{Field,PrimeField};
use nova_snark::frontend::{num::AllocatedNum,AllocatedBit,Boolean,ConstraintSystem,SynthesisError};
pub type Num=AllocatedNum<Fr>;
pub type SResult<T>=std::result::Result<T,SynthesisError>;
pub fn linear<CS:ConstraintSystem<Fr>>(mut cs:CS,terms:&[(&Num,Fr)],constant:Fr)->SResult<Num>{
    let value=terms.iter().try_fold(constant,|acc,(n,k)|Some(acc+n.get_value()?*k));
    let out=Num::alloc(cs.namespace(||"value"),||value.ok_or(SynthesisError::AssignmentMissing))?;
    cs.enforce(||"linear",|lc|lc+CS::one(),|mut lc|{lc=lc+(constant,CS::one());for(n,k)in terms{lc=lc+(*k,n.get_variable());}lc-out.get_variable()},|lc|lc);
    Ok(out)
}
pub fn constant<CS:ConstraintSystem<Fr>>(cs:CS,value:u64)->SResult<Num>{linear(cs,&[],Fr::from(value))}
pub fn sum<CS:ConstraintSystem<Fr>>(cs:CS,terms:&[Num])->SResult<Num>{linear(cs,&terms.iter().map(|n|(n,Fr::ONE)).collect::<Vec<_>>(),Fr::ZERO)}
pub fn not<CS:ConstraintSystem<Fr>>(cs:CS,n:&Num)->SResult<Num>{linear(cs,&[(n,-Fr::ONE)],Fr::ONE)}
pub fn equal<CS:ConstraintSystem<Fr>>(mut cs:CS,a:&Num,b:&Num){cs.enforce(||"equal",|lc|lc+CS::one(),|lc|lc+a.get_variable()-b.get_variable(),|lc|lc);}
pub fn enforce_zero<CS:ConstraintSystem<Fr>>(mut cs:CS,n:&Num){cs.enforce(||"zero",|lc|lc+CS::one(),|lc|lc+n.get_variable(),|lc|lc);}
pub fn boolean_num<CS:ConstraintSystem<Fr>>(mut cs:CS,bit:&Boolean)->SResult<Num>{
    let out=Num::alloc(cs.namespace(||"value"),||bit.get_value().map(|b|Fr::from(u64::from(b))).ok_or(SynthesisError::AssignmentMissing))?;
    cs.enforce(||"boolean value",|lc|lc+CS::one(),|lc|lc+&bit.lc(CS::one(),Fr::ONE)-out.get_variable(),|lc|lc);Ok(out)
}
pub fn alloc_bit<CS:ConstraintSystem<Fr>>(mut cs:CS,value:Option<bool>)->SResult<Num>{
    let bit=Boolean::Is(AllocatedBit::alloc(cs.namespace(||"bit"),value)?);boolean_num(cs.namespace(||"number"),&bit)
}
pub struct Bits{pub booleans:Vec<Boolean>,pub numbers:Vec<Num>}
pub fn bits<CS:ConstraintSystem<Fr>>(mut cs:CS,n:&Num,width:usize)->SResult<Bits>{
    let repr=n.get_value().map(|n|n.to_repr());let mut booleans=Vec::new();let mut numbers=Vec::new();
    for i in 0..width {
        let value=repr.as_ref().map(|bytes|(bytes.as_ref()[i/8]>>(i%8))&1==1);
        let bit=Boolean::Is(AllocatedBit::alloc(cs.namespace(||format!("bit_{i}")),value)?);
        numbers.push(boolean_num(cs.namespace(||format!("number_{i}")),&bit)?);booleans.push(bit);
    }
    cs.enforce(||"bounded bit packing",|lc|lc+CS::one(),|mut lc|{let mut coefficient=Fr::ONE;for bit in &booleans{lc=lc+&bit.lc(CS::one(),coefficient);coefficient=coefficient.double();}lc-n.get_variable()},|lc|lc);
    Ok(Bits{booleans,numbers})
}
pub fn pack<CS:ConstraintSystem<Fr>>(mut cs:CS,booleans:&[Boolean])->SResult<Num>{
    let value=booleans.iter().try_fold((Fr::ZERO,Fr::ONE),|(value,power),b|Some((value+if b.get_value()?{power}else{Fr::ZERO},power.double()))).map(|p|p.0);
    let out=Num::alloc(cs.namespace(||"packed"),||value.ok_or(SynthesisError::AssignmentMissing))?;
    cs.enforce(||"exact packing",|lc|lc+CS::one(),|mut lc|{let mut coefficient=Fr::ONE;for bit in booleans{lc=lc+&bit.lc(CS::one(),coefficient);coefficient=coefficient.double();}lc-out.get_variable()},|lc|lc);Ok(out)
}
pub fn is_zero<CS:ConstraintSystem<Fr>>(mut cs:CS,n:&Num)->SResult<Num>{
    let zero=alloc_bit(cs.namespace(||"is zero"),n.get_value().map(|v|v==Fr::ZERO))?;
    let inverse=Num::alloc(cs.namespace(||"inverse"),||n.get_value().map(|v|Option::<Fr>::from(v.invert()).unwrap_or(Fr::ZERO)).ok_or(SynthesisError::AssignmentMissing))?;
    cs.enforce(||"zero branch",|lc|lc+n.get_variable(),|lc|lc+zero.get_variable(),|lc|lc);
    cs.enforce(||"nonzero branch",|lc|lc+n.get_variable(),|lc|lc+inverse.get_variable(),|lc|lc+CS::one()-zero.get_variable());Ok(zero)
}
pub fn less<CS:ConstraintSystem<Fr>>(mut cs:CS,a:&[Num],b:&[Num])->SResult<Num>{
    if a.len()!=b.len(){return Err(SynthesisError::Unsatisfiable("invalid circuit shape or encoding".into()));}
    let mut eq=constant(cs.namespace(||"initial_equal"),1)?;let mut lt=constant(cs.namespace(||"initial_less"),0)?;
    for i in (0..a.len()).rev(){
        let not_a=not(cs.namespace(||format!("not_a_{i}")),&a[i])?;
        let low=not_a.mul(cs.namespace(||format!("low_bit_{i}")),&b[i])?;
        let at=eq.mul(cs.namespace(||format!("first_less_{i}")),&low)?;
        lt=linear(cs.namespace(||format!("less_{i}")),&[(&lt,Fr::ONE),(&at,Fr::ONE)],Fr::ZERO)?;
        let ab=a[i].mul(cs.namespace(||format!("product_{i}")),&b[i])?;
        let same=linear(cs.namespace(||format!("same_{i}")),&[(&a[i],-Fr::ONE),(&b[i],-Fr::ONE),(&ab,Fr::from(2))],Fr::ONE)?;
        eq=eq.mul(cs.namespace(||format!("equal_prefix_{i}")),&same)?;
    }Ok(lt)
}
pub fn bytes_be(bits_le:&[Boolean])->Vec<Boolean>{bits_le.chunks(8).flat_map(|byte|byte.iter().rev().cloned()).collect()}
pub fn constant_bytes(bytes:&[u8])->Vec<Boolean>{bytes.iter().flat_map(|byte|(0..8).rev().map(move|i|Boolean::constant((byte>>i)&1==1))).collect()}
