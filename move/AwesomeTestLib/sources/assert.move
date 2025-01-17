#[test_only]
/// A module for asserting u8 values
module awesome_stdlib::assert {
    use aptos_std::debug;
    use aptos_std::string_utils;

    /// Asserts that the values are equal, returning the error code if failed
    public fun eq<T: drop>(expected: T, actual: T, err: u64) {
        if (&expected != &actual) {
            debug::print(
                &string_utils::format2(
                    &b"Assertion failed:\n    Expected: {} \n    Got: {}", expected, actual
                )
            );
            abort err
        }
    }

    /// Asserts that the values are equal, returning the error code if failed
    public fun ne<T: drop>(expected: T, actual: T, err: u64) {
        if (&expected == &actual) {
            debug::print(
                &string_utils::format2(
                    &b"Assertion failed:\n    Expected: {} != {}", expected, actual
                )
            );
            abort err
        }
    }
}
