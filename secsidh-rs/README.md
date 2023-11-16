# Rust wrapper around secsidh

## Memory usage
Some parametersets use more than 2MB of stack.
Use RUST_MIN_STACK to set a higher thread stack limit if you run into issues (such as with the tests).
