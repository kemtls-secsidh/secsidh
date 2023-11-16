#![cfg(feature = "csidh2047m27l262")]
use secsidh::csidh4095m27l262::*;

#[test]
fn test_derive_once() {
    let (pk, sk) = keygen();
    let _ = derive(&pk, &sk);
}

#[test]
#[ignore = "Takes a looong time"]
fn test_derive_over_keys_loop() {
    let (pk, sk) = keygen();
    let pk2 = pk.clone();
    let sk2 = sk.clone();
    let ss_a = derive(&pk, &sk);
    for _ in 0..10 {
        let ss_b = derive(&pk, &sk);
        assert!(pk == pk2, "Public key has changed by calling derive?!?");
        assert!(sk == sk2, "Private key has changed by calling derive?!?");
        assert!(ss_a == ss_b, "Shared secrets not equal!?");
    }
}
