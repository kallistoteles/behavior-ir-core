use core_proof_feasibility033::codec::*;
type TestResult = Result<(), Box<dyn std::error::Error>>;
fn header(tag: u16) -> Vec<u8> {
    let mut v = b"core033.semantic.v1\0".to_vec();
    v.extend_from_slice(&tag.to_le_bytes());
    v
}

#[test]
fn signed_boundary_bytes_are_independent_of_encoder_round_trips() -> TestResult {
    for x in [i64::MIN, -1, 0, 1, i64::MAX] {
        let mut expected = header(2);
        expected.extend_from_slice(&x.to_le_bytes());
        expected.extend_from_slice(&0u32.to_le_bytes());
        let value = EntityValue::new(x, "");
        assert_eq!(encode_value(&value)?, expected);
        assert_eq!(decode_value(&expected)?, value);
    }
    Ok(())
}

#[test]
fn utf8_identity_bytes_keep_distinct_normalizations() -> TestResult {
    let mut expected = header(1);
    expected.extend_from_slice(&1u32.to_le_bytes());
    expected.push(b'E');
    expected.extend_from_slice(&2u32.to_le_bytes());
    expected.extend_from_slice(&[0xc3, 0xa9]);
    assert_eq!(encode_key(&EntityKey::new("E", "é"))?, expected);
    assert_eq!(decode_key(&expected)?, EntityKey::new("E", "é"));
    assert_ne!(
        encode_key(&EntityKey::new("E", "é"))?,
        encode_key(&EntityKey::new("E", "e\u{301}"))?
    );
    Ok(())
}

#[test]
fn every_digest_bit_is_preserved_in_declared_limb_order() {
    let mut digest = [0; 32];
    for (i, b) in digest.iter_mut().enumerate() {
        *b = i as u8;
    }
    let expected = [
        0x0706050403020100,
        0x0f0e0d0c0b0a0908,
        0x1716151413121110,
        0x1f1e1d1c1b1a1918,
    ];
    assert_eq!(digest_limbs(&digest), expected);
    assert_eq!(limbs_digest(expected), digest);
}

#[test]
fn malformed_or_noncanonical_records_are_not_accepted() -> TestResult {
    let genuine = encode_key(&EntityKey::new("E", "id"))?;
    assert_eq!(decode_key(&genuine)?, EntityKey::new("E", "id"));
    for changed in [
        vec![],
        genuine[..genuine.len() - 1].to_vec(),
        [genuine.clone(), vec![0]].concat(),
        {
            let mut x = genuine.clone();
            x[0] = b'X';
            x
        },
    ] {
        assert!(decode_key(&changed).is_err());
    }
    let mut oversized = header(1);
    oversized.extend_from_slice(&u32::MAX.to_le_bytes());
    assert!(decode_key(&oversized).is_err());
    assert!(encode_key(&EntityKey::new("E", &"x".repeat(65))).is_err());
    let mut future = EntityValue::new(1, "");
    future.format_version = "future".into();
    assert!(encode_value(&future).is_err());
    Ok(())
}
