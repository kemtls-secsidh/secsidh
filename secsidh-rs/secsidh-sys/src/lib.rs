use core::slice;

use getrandom::getrandom;

#[no_mangle]
/// Generates random bytes for libsecsidh, not suitable for your consumption.
///
/// # Safety
/// Will assume the pointer and length are a valid slice.
pub unsafe extern "C" fn randombytes(x: *mut libc::c_void, length: libc::size_t) {
    let data = slice::from_raw_parts_mut(x as *mut libc::c_uchar, length);
    getrandom(data).unwrap();
}

#[allow(non_upper_case_globals)]
#[allow(non_camel_case_types)]
#[allow(non_snake_case)]
mod bindings {
    include!(concat!(env!("OUT_DIR"), "/secsidh_bindings.rs"));
}
pub use bindings::*;
