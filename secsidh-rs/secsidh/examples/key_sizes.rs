use paste::paste;

macro_rules! print_csidh {
    ($feat: literal, $csidh: ident) => {
        paste! {
        #[cfg(feature = $feat)] {
            use secsidh::$csidh::{PK_SIZE, SK_SIZE};
            println!("{}: |pk|={PK_SIZE}, |sk|={SK_SIZE}", stringify!($csidh))
        }
        }
    };
}

fn main() {
    print_csidh!("csidh2047m1l226", csidh2047m1l226);
    print_csidh!("csidh4095m27l262", csidh4095m27l262);
    print_csidh!("csidh5119m46l244", csidh5119m46l244);
    print_csidh!("csidh6143m59l262", csidh6143m59l262);
    print_csidh!("csidh8191m78l338", csidh8191m78l338);
    print_csidh!("csidh9215m85l389", csidh9215m85l389);

    print_csidh!("ctidh2047m1l226", ctidh2047m1l226);
    print_csidh!("ctidh4095m27l262", ctidh4095m27l262);
    print_csidh!("ctidh5119m46l244", ctidh5119m46l244);
    print_csidh!("ctidh6143m59l262", ctidh6143m59l262);
    print_csidh!("ctidh8191m78l338", ctidh8191m78l338);
    print_csidh!("ctidh9215m85l389", ctidh9215m85l389);
}
