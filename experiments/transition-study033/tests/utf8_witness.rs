use core_proof_feasibility033::utf8_witness::verify;

#[test]
fn canonical_fields_cover_all_widths_nul_and_noncharacters() {
    for text in ["", "a\0b", "räksmörgås", "λ水🦀", "\u{ffff}\u{10ffff}"] {
        let witnesses: Vec<_> = text.chars().map(u32::from).collect();
        assert!(verify(text.as_bytes(), &witnesses, text.len()).is_ok());
    }
    // Distinct normalization forms remain distinct canonical byte strings.
    assert!(verify("é".as_bytes(), &[0xe9], 64).is_ok());
    assert!(verify("e\u{301}".as_bytes(), &[0x65, 0x301], 64).is_ok());
    assert!(verify("é".as_bytes(), &[0x65, 0x301], 64).is_err());
}

#[test]
fn hostile_encodings_and_unconsumed_suffixes_are_rejected() {
    for (bytes, witnesses) in [
        (&[0xc0, 0x80][..], &[0][..]),            // Overlong NUL.
        (&[0xe0, 0x81, 0x81][..], &[0x41][..]),   // Overlong ASCII.
        (&[0xed, 0xa0, 0x80][..], &[0xd800][..]), // Surrogate.
        (&[0xf4, 0x90, 0x80, 0x80][..], &[0x110000][..]),
        (&[0xff][..], &[u32::MAX][..]),
        (&[0xc3][..], &[0xe9][..]),       // Truncated scalar.
        (&[0x61, 0xff][..], &[0x61][..]), // Valid prefix, invalid suffix.
        (&[0x61, 0x62][..], &[0x61][..]), // Valid suffix still must be consumed.
        (&[0x61][..], &[][..]),
        (&[][..], &[0x61][..]),
    ] {
        assert!(verify(bytes, witnesses, 64).is_err());
    }
}

#[test]
fn proposed_decode_order_values_and_field_limits_are_enforced() {
    assert!(verify(b"ab", &[0x62, 0x61], 64).is_err());
    assert!(verify(b"ab", &[0x61, 0x61], 64).is_err());
    assert!(verify(b"ab", &[0x61, 0x62, 0x63], 64).is_err());
    assert!(verify(b"ab", &[0x61, 0x62], 1).is_err());
    assert!(verify(b"ab", &[0x61, 0x62], 2).is_ok());
}
