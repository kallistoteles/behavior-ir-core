pub fn publication_gate(
    existing: bool,
    same: bool,
    parent: bool,
    proof: bool,
    require: bool,
) -> u32 {
    if existing {
        if same { 1 } else { 2 }
    } else {
        if parent {
            if require {
                if proof { 0 } else { 4 }
            } else {
                0
            }
        } else {
            3
        }
    }
}
