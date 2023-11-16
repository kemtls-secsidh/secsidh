use std::path::Path;

fn generate_bindings(outdir: &Path, headerfile: &str) {
    let includedir = outdir.join("build").join("include");
    bindgen::Builder::default()
        .clang_arg(format!("-I{}", includedir.display()))
        .header(
            includedir
                .join("secsidh")
                .join(format!("{}.h", headerfile))
                .to_str()
                .unwrap(),
        )
        .size_t_is_usize(true)
        .generate_comments(true)
        .use_core()
        .ctypes_prefix("::libc")
        .allowlist_recursively(false)
        .allowlist_type("SECSIDH_*")
        .allowlist_function("secsidh_.*")
        .allowlist_var("SECSIDH_.*")
        .generate()
        .expect("Unable to generate bindings")
        .write_to_file(outdir.join(format!("{}_bindings.rs", headerfile)))
        .expect("couldn't write bindings");
}

fn main() {
    // check if we have clang
    bindgen::clang_version();

    let mut config = cmake::Config::new("libsecsidh");

    config.define("SECSIDH_GLOBAL_COUNTERS", "OFF");
    config.define("SECSIDH_USE_OPENSSL_RAND", "OFF");

    let use_gmp = if std::env::var("CARGO_FEATURE_AVX2").is_ok() {
        println!("cargo:warning=Using SECSIDH_ARITHMETIC=3 (GMP AVX2)");
        config.define("SECSIDH_ARITHMETIC", "3");
        true
    } else if std::env::var("CARGO_FEATURE_KARATSUBA").is_ok() {
        println!("cargo:warning=Using SECSIDH_ARITHMETIC=4 (GMP Karatsuba)");
        config.define("SECSIDH_ARITHMETIC", "4");
        true
    } else {
        println!("cargo:warning=Using SECSIDH_ARITHMETIC=5 (MULX)");
        config.define("SECSIDH_ARITHMETIC", "5");
        false
    };

    if use_gmp {
        println!("cargo:rustc-link-lib=gmp");
    }

    macro_rules! onoff {
        ($name: literal) => {
            if cfg!(feature = $name) {
                "ON"
            } else {
                "OFF"
            }
        };
    }

    // CSIDH
    config.define("SECSIDH_ENABLE_CSIDH2047m1l226", onoff!("csidh2047m1l226"));
    config.define("SECSIDH_ENABLE_CSIDH4095m27l262", onoff!("csidh4095m27l262"));
    config.define("SECSIDH_ENABLE_CSIDH5119m46l244", onoff!("csidh5119m46l244"));
    config.define("SECSIDH_ENABLE_CSIDH6143m59l262", onoff!("csidh6143m59l262"));
    config.define("SECSIDH_ENABLE_CSIDH8191m78l338", onoff!("csidh8191m78l338"));
    config.define("SECSIDH_ENABLE_CSIDH99215m85l389", onoff!("csidh99215m85l389"));
    // CTIDH
    config.define("SECSIDH_ENABLE_CTIDH2047m1l226", onoff!("ctidh2047m1l226"));
    config.define("SECSIDH_ENABLE_CTIDH4095m27l262", onoff!("ctidh4095m27l262"));
    config.define("SECSIDH_ENABLE_CTIDH5119m46l244", onoff!("ctidh5119m46l244"));
    config.define("SECSIDH_ENABLE_CTIDH6143m59l262", onoff!("ctidh6143m59l262"));
    config.define("SECSIDH_ENABLE_CTIDH8191m78l338", onoff!("ctidh8191m78l338"));
    config.define("SECSIDH_ENABLE_CTIDH99215m85l389", onoff!("ctidh99215m85l389"));

    let outdir = config.build_target("secsidh").build();
    let libdir = outdir.join("build").join("lib");

    println!("cargo:rustc-link-lib=static=secsidh");
    println!("cargo:rustc-link-search=native={}", libdir.display());

    generate_bindings(&outdir, "secsidh");

    build_deps::rerun_if_changed_paths("libsecsidh/src/**/*").unwrap();
    build_deps::rerun_if_changed_paths("libsecsidh/src/*").unwrap();
    build_deps::rerun_if_changed_paths("libsecsidh/src").unwrap();
}
