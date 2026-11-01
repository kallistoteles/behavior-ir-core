//! Independent explicit R1CS fixture for the full signed Int64 negative bit.
use core_proof_feasibility033::{
    codec::MAGIC,
    correspondence::{MatrixArtifact, Row, Term},
};
pub const MODULUS: [u8; 32] = [
    1, 0, 0, 0, 33, 235, 70, 140, 221, 168, 148, 9, 252, 152, 70, 34, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 64,
];
fn small(n: u64) -> [u8; 32] {
    let mut out = [0; 32];
    out[..8].copy_from_slice(&n.to_le_bytes());
    out
}
fn negative(n: u64) -> [u8; 32] {
    let mut result = MODULUS;
    let mut borrow = 0u16;
    let bytes = small(n);
    for i in 0..32 {
        let sub = u16::from(bytes[i]) + borrow;
        let here = u16::from(result[i]);
        result[i] = here.wrapping_sub(sub) as u8;
        borrow = u16::from(here < sub);
    }
    result
}
fn term(variable: u32, coefficient: [u8; 32]) -> Term {
    Term {
        variable,
        coefficient,
    }
}
pub fn signed_negative() -> MatrixArtifact {
    let mut rows = Vec::new();
    for bit in 0..64 {
        let variable = 3 + bit;
        rows.push(Row {
            a: vec![term(variable, small(1))],
            b: vec![term(0, negative(1)), term(variable, small(1))],
            c: vec![],
        });
    }
    let mut decomposition = vec![term(1, small(1))];
    for bit in 0..64 {
        decomposition.push(term(3 + bit, negative(1u64 << bit)));
    }
    rows.push(Row {
        a: decomposition,
        b: vec![term(0, small(1))],
        c: vec![],
    });
    rows.push(Row {
        a: vec![term(2, small(1)), term(66, negative(1))],
        b: vec![term(0, small(1))],
        c: vec![],
    });
    MatrixArtifact {
        format_version: "core033.matrix.v1".into(),
        modulus: MODULUS,
        variables: 67,
        inputs: vec![1],
        private: (3..67).collect(),
        outputs: vec![2],
        constant_one: 0,
        rows,
    }
}

/// Deliberately independent from the production matrix codec.
pub fn bytes(matrix: &MatrixArtifact) -> Vec<u8> {
    let mut out = MAGIC.to_vec();
    out.extend_from_slice(&96u16.to_le_bytes());
    out.extend_from_slice(&matrix.modulus);
    for value in [
        matrix.variables,
        matrix.inputs.len() as u32,
        matrix.private.len() as u32,
        matrix.outputs.len() as u32,
        matrix.rows.len() as u32,
        matrix.constant_one,
    ] {
        out.extend_from_slice(&value.to_le_bytes());
    }
    let ports: Vec<_> = matrix
        .inputs
        .iter()
        .chain(&matrix.private)
        .chain(&matrix.outputs)
        .collect();
    out.extend_from_slice(&(ports.len() as u32).to_le_bytes());
    for port in ports {
        out.extend_from_slice(&port.to_le_bytes());
    }
    out.extend_from_slice(&(matrix.rows.len() as u32).to_le_bytes());
    for row in &matrix.rows {
        for vector in [&row.a, &row.b, &row.c] {
            out.extend_from_slice(&(vector.len() as u32).to_le_bytes());
            for term in vector {
                out.extend_from_slice(&term.variable.to_le_bytes());
                out.extend_from_slice(&term.coefficient);
            }
        }
    }
    out
}
