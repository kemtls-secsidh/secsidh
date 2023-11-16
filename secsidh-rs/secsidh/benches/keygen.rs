extern crate secsidh;

use std::time::Duration;

use criterion::{black_box, criterion_group, criterion_main, BenchmarkId, Criterion};
use paste::paste;

use secsidh::*;

macro_rules! benchmark_params {
    ($group: ident, $time: literal, $feat: literal, $ns: ident) => {{
        paste! {
            #[cfg(feature = $feat)] {
                $group.measurement_time(Duration::from_secs($time));
                $group.sample_size(20);
                $group.bench_function(
                    BenchmarkId::new(stringify!($ns), "Keygen"),
                    |b| b.iter(|| black_box($ns::keygen()))
                );
                let keypair = $ns::keygen();
                $group.sample_size(10);
                $group.bench_with_input(
                    BenchmarkId::new(stringify!($ns), "Derive"),
                    &keypair,
                    |b, (pk, sk)| {
                        b.iter(|| black_box($ns::derive(pk, sk)))
                    }
                );
            }
        }
    }};
}

fn benchmark(c: &mut Criterion) {
    let mut group = c.benchmark_group("secsidh");

    group.warm_up_time(Duration::from_secs(20));
    benchmark_params!(group, 70, "csidh2047m1l226", csidh2047m1l226);
    benchmark_params!(group, 200, "csidh4095m27l262", csidh4095m27l262);
    benchmark_params!(group, 300, "csidh5119m46l244", csidh5119m46l244);
    benchmark_params!(group, 425, "csidh6143m59l262", csidh6143m59l262);
    benchmark_params!(group, 1100, "csidh8191m78l338", csidh8191m78l338);
    benchmark_params!(group, 10, "csidh9215m85l389", csidh9215m85l389);

    group.warm_up_time(Duration::from_secs(20));
    benchmark_params!(group, 10, "ctidh2047m1l226", ctidh2047m1l226);
    benchmark_params!(group, 40, "ctidh4095m27l262", ctidh4095m27l262);
    group.warm_up_time(Duration::from_secs(40));
    benchmark_params!(group, 24, "ctidh5119m46l244", ctidh5119m46l244);
    benchmark_params!(group, 100, "ctidh6143m59l262", ctidh6143m59l262);
    benchmark_params!(group, 280, "ctidh8191m78l338", ctidh8191m78l338);
    benchmark_params!(group, 500, "ctidh9215m85l389", ctidh9215m85l389);

    group.finish()
}

criterion_group!(benches, benchmark);
criterion_main!(benches);
