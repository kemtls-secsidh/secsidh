use paste::paste;

macro_rules! parameterset {
    ($full_name: ident, $ns: ident) => {
        paste! {
        #[cfg(feature = ""$full_name)]
        #[doc="Parameterset " $full_name]
        pub mod $full_name {
            use super::*;
            use std::{convert::TryInto, mem::MaybeUninit};

            use secsidh_sys::*;

            /// Length of the public key in bytes
            pub const PK_SIZE: usize = [<SECSIDH_ $ns _PK_SIZE>] as usize;
            /// Length of the secret key in bytes
            pub const SK_SIZE: usize = [<SECSIDH_ $ns _SK_SIZE>] as usize;
            /// Length of the shared secret in bytes
            pub const SS_SIZE: usize = [<SECSIDH_ $ns _SS_SIZE>] as usize;

            #[derive(Clone, PartialEq, Eq)]
            #[doc=$full_name " public key"]
            pub struct PublicKey([u8; PK_SIZE]);

            impl PublicKey {
                /// Construct a public key from bytes.
                /// Panic if the length is wrong
                pub fn from_bytes(bytes: &[u8]) -> Self {
                    PublicKey(bytes.try_into().expect("Incorrect length"))
                }
            }

            impl AsRef<[u8]> for PublicKey {
                fn as_ref(&self) -> &[u8] {
                    self.0.as_ref()
                }
            }

            #[doc=$full_name " secret key"]
            #[derive(PartialEq, Eq, Clone)]
            pub struct SecretKey([u8; SK_SIZE]);

            impl SecretKey {
                /// Convert bytes into a secret key
                /// Panics if the length is incorrect.
                pub fn from_bytes(bytes: &[u8]) -> Self {
                    SecretKey(bytes.try_into().expect("Incorrect length"))
                }
            }

            impl AsRef<[u8]> for SecretKey {
                fn as_ref(&self) -> &[u8] {
                    self.0.as_ref()
                }
            }

            #[derive(Clone, PartialEq)]
            #[doc=$full_name " ciphertext"]
            pub struct SharedSecret([u8; SS_SIZE]);

            impl AsRef<[u8]> for SharedSecret {
                fn as_ref(&self) -> &[u8] {
                    self.0.as_ref()
                }
            }

            #[doc="Returns " $full_name]
            pub fn name() -> &'static str {
                stringify!($full_name)
            }

            #[doc="Generate a new " $full_name " public and private key."]
            pub fn keygen() -> (PublicKey, SecretKey) {
                let mut pk: MaybeUninit<[u8; PK_SIZE]> = MaybeUninit::uninit();
                let mut sk: MaybeUninit<[u8; SK_SIZE]> = MaybeUninit::uninit();

                let pk_ptr = pk.as_mut_ptr() as *mut u8;
                let sk_ptr = sk.as_mut_ptr() as *mut u8;

                paste! {
                    unsafe { assert_eq!([<secsidh_ $ns _keygen>](pk_ptr, sk_ptr), 0, "keygen failed") }
                }

                unsafe { (PublicKey(pk.assume_init()), SecretKey(sk.assume_init())) }
            }

            #[doc="Derive the shared secret from a " $full_name " public key and your secret key."]
            pub fn derive(pk_b: &PublicKey, sk_a: &SecretKey) -> SharedSecret {
                let mut ss_buf: MaybeUninit<[u8; SS_SIZE]> = MaybeUninit::uninit();

                let ss = ss_buf.as_mut_ptr() as *mut u8;
                let pk = pk_b.0.as_ptr();
                let sk = sk_a.0.as_ptr();

                unsafe {
                    assert_eq!([<secsidh_ $ns _derive>](ss, pk, sk), 0, "derive failed");
                }

                SharedSecret(unsafe { ss_buf.assume_init() })
            }

            #[cfg(test)]
            mod test {
                use super::*;

                #[test]
                fn test_keyexchange_correctness() {
                    let (pk_a, sk_a) = keygen();
                    let (pk_b, sk_b) = keygen();

                    let ss_a = derive(&pk_b, &sk_a);
                    let ss_b = derive(&pk_a, &sk_b);

                    assert!(ss_a == ss_b, "must be equal");
                }

                extern "C" {
                    // Use the internal constants for cross-checking the header files
                    paste!{
                        static [<secsidh_ $ns _pk_size>]: usize;
                        static [<secsidh_ $ns _sk_size>]: usize;
                        static [<secsidh_ $ns _ss_size>]: usize;
                    }
                }

                #[test]
                fn test_key_pk_size() {
                    assert_eq!(PK_SIZE, [<SECSIDH_ $ns _PK_SIZE>] as usize);
                    assert_eq!(PK_SIZE, unsafe { [<secsidh_ $ns _pk_size>] });
                }

                #[test]
                fn test_key_sk_size() {
                    assert_eq!(SK_SIZE, [<SECSIDH_ $ns _SK_SIZE>] as usize);
                    assert_eq!(SK_SIZE, unsafe { [<secsidh_ $ns _sk_size>] });
                }

                #[test]
                fn test_key_ss_size() {
                    assert_eq!(SS_SIZE, [<SECSIDH_ $ns _SS_SIZE>] as usize);
                    assert_eq!(SS_SIZE, unsafe { [<secsidh_ $ns _ss_size>] });
                }

                #[test]
                fn test_outer_api() {
                    let alg = crate::Algorithm::$ns;
                    assert!(crate::is_enabled(alg));
                    let pk_a = PublicKey([0u8; PK_SIZE]);
                    let sk_a = SecretKey([0u8; SK_SIZE]);

                    assert!(crate::PublicKey::from_bytes(alg, pk_a.as_ref()).is_some());
                    assert!(crate::SecretKey::from_bytes(alg, sk_a.as_ref()).is_some());

                    let (pk_a, sk_a) = crate::keygen(alg).unwrap();
                    assert!(crate::derive(&pk_a, &sk_a).is_some());

                    assert_eq!(crate::length_public_key(alg).unwrap(), PK_SIZE);
                    assert_eq!(crate::length_secret_key(alg).unwrap(), SK_SIZE);
                    assert_eq!(crate::length_shared_secret(alg).unwrap(), SS_SIZE);
                }
            }
        }
        #[cfg(not(feature = ""$full_name))]
        #[cfg(test)]
        mod [< test_ $full_name >] {
            #[test]
            fn test_outer_api_disabled() {
                let alg = crate::Algorithm::$ns;

                assert!(!crate::is_enabled(alg));

                let keybuf = [0u8; 10];
                assert!(crate::PublicKey::from_bytes(alg, &keybuf).is_none());
                assert!(crate::SecretKey::from_bytes(alg, &keybuf).is_none());

                assert_eq!(crate::length_public_key(alg), None);
                assert_eq!(crate::length_secret_key(alg), None);
                assert_eq!(crate::length_shared_secret(alg), None);
            }
        }}
    };
}

parameterset!(csidh2047m1l226, CSIDH2047m1l226);
parameterset!(csidh4095m27l262, CSIDH4095m27l262);
parameterset!(csidh5119m46l244, CSIDH5119m46l244);
parameterset!(csidh6143m59l262, CSIDH6143m59l262);
parameterset!(csidh8191m78l338, CSIDH8191m78l338);
parameterset!(csidh9215m85l389, CSIDH9215m85l389);

parameterset!(ctidh2047m1l226, CTIDH2047m1l226);
parameterset!(ctidh4095m27l262, CTIDH4095m27l262);
parameterset!(ctidh5119m46l244, CTIDH5119m46l244);
parameterset!(ctidh6143m59l262, CTIDH6143m59l262);
parameterset!(ctidh8191m78l338, CTIDH8191m78l338);
parameterset!(ctidh9215m85l389, CTIDH9215m85l389);

#[derive(Clone)]
pub struct PublicKey {
    alg: Algorithm,
    key: Vec<u8>,
}

#[derive(Clone)]
pub struct SecretKey {
    alg: Algorithm,
    key: Vec<u8>,
}

impl AsRef<[u8]> for PublicKey {
    fn as_ref(&self) -> &[u8] {
        self.key.as_ref()
    }
}

impl AsRef<[u8]> for SecretKey {
    fn as_ref(&self) -> &[u8] {
        self.key.as_ref()
    }
}

macro_rules! try_construct_key {
    ($alg: ident, $buf: ident, $size: ident, $(($variant: tt, $ns: ident)),+) => {
        match $alg {
            $(
                paste!{[<$variant>]} => {
                    paste!{
                        #[cfg(feature = ""$ns)]
                        #[inline(always)]
                        fn get_pk(buf: &[u8]) -> Option<Vec<u8>> {
                            use $ns::$size;
                            if buf.len() == $size {
                                Some(buf.to_vec())
                            } else {
                                None
                            }
                        }
                        #[cfg(not(feature = ""$ns))]
                        #[inline(always)]
                        fn get_pk(_buf: &[u8]) -> Option<Vec<u8>> {
                            None
                        }
                    }
                    get_pk($buf)
                },
            )+
        }
    };
}

impl PublicKey {
    pub fn from_bytes(alg: Algorithm, buf: &[u8]) -> Option<PublicKey> {
        use Algorithm::*;
        let key = try_construct_key!(
            alg,
            buf,
            PK_SIZE,
            // csidh
            (CSIDH2047m1l226, csidh2047m1l226),
            (CSIDH4095m27l262, csidh4095m27l262),
            (CSIDH5119m46l244, csidh5119m46l244),
            (CSIDH6143m59l262, csidh6143m59l262),
            (CSIDH8191m78l338, csidh8191m78l338),
            (CSIDH9215m85l389, csidh9215m85l389),
            // // ctidh
            (CTIDH2047m1l226, ctidh2047m1l226),
            (CTIDH4095m27l262, ctidh4095m27l262),
            (CTIDH5119m46l244, ctidh5119m46l244),
            (CTIDH6143m59l262, ctidh6143m59l262),
            (CTIDH8191m78l338, ctidh8191m78l338),
            (CTIDH9215m85l389, ctidh9215m85l389)
        )?;
        Some(PublicKey { alg, key })
    }
}

impl SecretKey {
    pub fn from_bytes(alg: Algorithm, buf: &[u8]) -> Option<SecretKey> {
        use Algorithm::*;
        let key = try_construct_key!(
            alg,
            buf,
            SK_SIZE,
            // csidh
            (CSIDH2047m1l226, csidh2047m1l226),
            (CSIDH4095m27l262, csidh4095m27l262),
            (CSIDH5119m46l244, csidh5119m46l244),
            (CSIDH6143m59l262, csidh6143m59l262),
            (CSIDH8191m78l338, csidh8191m78l338),
            (CSIDH9215m85l389, csidh9215m85l389),
            // // ctidh
            (CTIDH2047m1l226, ctidh2047m1l226),
            (CTIDH4095m27l262, ctidh4095m27l262),
            (CTIDH5119m46l244, ctidh5119m46l244),
            (CTIDH6143m59l262, ctidh6143m59l262),
            (CTIDH8191m78l338, ctidh8191m78l338),
            (CTIDH9215m85l389, ctidh9215m85l389)
        )?;
        Some(SecretKey { alg, key })
    }
}

#[derive(Debug, Clone, Copy, PartialEq, Eq, Hash)]
pub enum Algorithm {
    CSIDH2047m1l226,
    CSIDH4095m27l262,
    CSIDH5119m46l244,
    CSIDH6143m59l262,
    CSIDH8191m78l338,
    CSIDH9215m85l389,
    CTIDH2047m1l226,
    CTIDH4095m27l262,
    CTIDH5119m46l244,
    CTIDH6143m59l262,
    CTIDH8191m78l338,
    CTIDH9215m85l389,
}

pub fn is_enabled(alg: Algorithm) -> bool {
    use Algorithm::*;
    match alg {
        CSIDH2047m1l226 => cfg!(feature = "csidh2047m1l226"),
        CSIDH4095m27l262 => cfg!(feature = "csidh4095m27l262"),
        CSIDH5119m46l244 => cfg!(feature = "csidh5119m46l244"),
        CSIDH6143m59l262 => cfg!(feature = "csidh6143m59l262"),
        CSIDH8191m78l338 => cfg!(feature = "csidh8191m78l338"),
        CSIDH9215m85l389 => cfg!(feature = "csidh9215m85l389"),
        CTIDH2047m1l226 => cfg!(feature = "ctidh2047m1l226"),
        CTIDH4095m27l262 => cfg!(feature = "ctidh4095m27l262"),
        CTIDH5119m46l244 => cfg!(feature = "ctidh5119m46l244"),
        CTIDH6143m59l262 => cfg!(feature = "ctidh6143m59l262"),
        CTIDH8191m78l338 => cfg!(feature = "ctidh8191m78l338"),
        CTIDH9215m85l389 => cfg!(feature = "ctidh9215m85l389"),
    }
}

macro_rules! keylen_impl {
    ($alg: ident, $keylen: ident, $(($variant: tt, $ns: ident)),+) => {
        match $alg {
            $(
                $variant => {
                    paste! {
                        #[cfg(feature = ""$ns)]
                        #[inline(always)]
                        fn get_len() -> Option<usize> {
                            Some($ns::$keylen)
                        }
                        #[cfg(not(feature = ""$ns))]
                        #[inline(always)]
                        fn get_len() -> Option<usize> {
                            None
                        }
                        get_len()
                    }
                },
            )+
        }
    };
}

pub fn length_public_key(alg: Algorithm) -> Option<usize> {
    use Algorithm::*;
    keylen_impl!(
        alg,
        PK_SIZE,
        // csidh
        (CSIDH2047m1l226, csidh2047m1l226),
        (CSIDH4095m27l262, csidh4095m27l262),
        (CSIDH5119m46l244, csidh5119m46l244),
        (CSIDH6143m59l262, csidh6143m59l262),
        (CSIDH8191m78l338, csidh8191m78l338),
        (CSIDH9215m85l389, csidh9215m85l389),
        // ctidh
        (CTIDH2047m1l226, ctidh2047m1l226),
        (CTIDH4095m27l262, ctidh4095m27l262),
        (CTIDH5119m46l244, ctidh5119m46l244),
        (CTIDH6143m59l262, ctidh6143m59l262),
        (CTIDH8191m78l338, ctidh8191m78l338),
        (CTIDH9215m85l389, ctidh9215m85l389)
    )
}

pub fn length_secret_key(alg: Algorithm) -> Option<usize> {
    use Algorithm::*;
    keylen_impl!(
        alg,
        SK_SIZE,
        // csidh
        (CSIDH2047m1l226, csidh2047m1l226),
        (CSIDH4095m27l262, csidh4095m27l262),
        (CSIDH5119m46l244, csidh5119m46l244),
        (CSIDH6143m59l262, csidh6143m59l262),
        (CSIDH8191m78l338, csidh8191m78l338),
        (CSIDH9215m85l389, csidh9215m85l389),
        // ctidh
        (CTIDH2047m1l226, ctidh2047m1l226),
        (CTIDH4095m27l262, ctidh4095m27l262),
        (CTIDH5119m46l244, ctidh5119m46l244),
        (CTIDH6143m59l262, ctidh6143m59l262),
        (CTIDH8191m78l338, ctidh8191m78l338),
        (CTIDH9215m85l389, ctidh9215m85l389)
    )
}

pub fn length_shared_secret(alg: Algorithm) -> Option<usize> {
    use Algorithm::*;
    keylen_impl!(
        alg,
        SS_SIZE,
        // csidh
        (CSIDH2047m1l226, csidh2047m1l226),
        (CSIDH4095m27l262, csidh4095m27l262),
        (CSIDH5119m46l244, csidh5119m46l244),
        (CSIDH6143m59l262, csidh6143m59l262),
        (CSIDH8191m78l338, csidh8191m78l338),
        (CSIDH9215m85l389, csidh9215m85l389),
        // ctidh
        (CTIDH2047m1l226, ctidh2047m1l226),
        (CTIDH4095m27l262, ctidh4095m27l262),
        (CTIDH5119m46l244, ctidh5119m46l244),
        (CTIDH6143m59l262, ctidh6143m59l262),
        (CTIDH8191m78l338, ctidh8191m78l338),
        (CTIDH9215m85l389, ctidh9215m85l389)
    )
}

macro_rules! try_keygen {
    ($alg: ident, $(($variant: tt, $ns: ident)),+) => {
        match $alg {
            $(
                $variant => {
                    paste!{
                        #[cfg(feature = ""$ns)]
                        #[inline(always)]
                        fn get_keys() -> Option<(Vec<u8>, Vec<u8>)> {
                            let (pk, sk) = $ns::keygen();
                            Some((pk.as_ref().to_vec(), sk.as_ref().to_vec()))
                        }
                        #[cfg(not(feature = ""$ns))]
                        #[inline(always)]
                        fn get_keys() -> Option<(Vec<u8>, Vec<u8>)> {
                            None
                        }
                    }
                    get_keys()
                },
            )+
        }
    };
}

pub fn keygen(alg: Algorithm) -> Option<(PublicKey, SecretKey)> {
    use Algorithm::*;
    let (pk, sk) = try_keygen!(
        alg,
        // csidh
        (CSIDH2047m1l226, csidh2047m1l226),
        (CSIDH4095m27l262, csidh4095m27l262),
        (CSIDH5119m46l244, csidh5119m46l244),
        (CSIDH6143m59l262, csidh6143m59l262),
        (CSIDH8191m78l338, csidh8191m78l338),
        (CSIDH9215m85l389, csidh9215m85l389),
        // ctidh
        (CTIDH2047m1l226, ctidh2047m1l226),
        (CTIDH4095m27l262, ctidh4095m27l262),
        (CTIDH5119m46l244, ctidh5119m46l244),
        (CTIDH6143m59l262, ctidh6143m59l262),
        (CTIDH8191m78l338, ctidh8191m78l338),
        (CTIDH9215m85l389, ctidh9215m85l389)
    )?;
    Some((PublicKey { alg, key: pk }, SecretKey { alg, key: sk }))
}

macro_rules! try_derive {
    ($pk_b:expr, $sk_a:expr, $(($variant:tt, $ns:ident)),+) => {
        match $pk_b.alg {
            $(
                $variant => {
                    paste!{
                        #[cfg(feature = ""$ns)]
                        #[inline(always)]
                        fn do_derive(pk_b: &[u8], sk_a: &[u8]) -> Option<Vec<u8>> {
                            let pk_b = $ns::PublicKey::from_bytes(pk_b);
                            let sk_a = $ns::SecretKey::from_bytes(sk_a);
                            let ss = $ns::derive(&pk_b, &sk_a);
                            Some(ss.as_ref().to_vec())
                        }
                        #[cfg(not(feature = ""$ns))]
                        #[inline(always)]
                        fn do_derive(_pk_b: &[u8], _sk_a: &[u8]) -> Option<Vec<u8>> {
                            None
                        }
                    }
                    do_derive($pk_b.as_ref(), $sk_a.as_ref())
                },
            )+
        }
    };
}

pub fn derive(pk_b: &PublicKey, sk_a: &SecretKey) -> Option<Vec<u8>> {
    use Algorithm::*;

    assert_eq!(
        pk_b.alg, sk_a.alg,
        "Public and secret key must have the same algorithm"
    );
    try_derive!(
        pk_b,
        sk_a,
        // csidh
        (CSIDH2047m1l226, csidh2047m1l226),
        (CSIDH4095m27l262, csidh4095m27l262),
        (CSIDH5119m46l244, csidh5119m46l244),
        (CSIDH6143m59l262, csidh6143m59l262),
        (CSIDH8191m78l338, csidh8191m78l338),
        (CSIDH9215m85l389, csidh9215m85l389),
        // ctidh
        (CTIDH2047m1l226, ctidh2047m1l226),
        (CTIDH4095m27l262, ctidh4095m27l262),
        (CTIDH5119m46l244, ctidh5119m46l244),
        (CTIDH6143m59l262, ctidh6143m59l262),
        (CTIDH8191m78l338, ctidh8191m78l338),
        (CTIDH9215m85l389, ctidh9215m85l389)
    )
}
