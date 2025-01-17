#[test_only]
/// A module for asserting u32 values
module awesome_stdlib::assert_u32 {
    use aptos_std::debug;
    use aptos_std::string_utils;

    /// Asserts that the values are equal, returning the error code if failed
    public fun eq(expected: u32, actual: u32, err: u64) {
        if (expected != actual) {
            debug::print(
                &string_utils::format2(
                    &b"Assertion failed:\n    Expected: {} = {}", expected, actual
                )
            );
            abort err
        }
    }

    /// Asserts that the values are equal, returning the error code if failed
    public fun ne(expected: u32, actual: u32, err: u64) {
        if (expected == actual) {
            debug::print(
                &string_utils::format2(
                    &b"Assertion failed:\n    Expected: {} != {}", expected, actual
                )
            );
            abort err
        }
    }

    /// Asserts that the left value is less than the right, returning the error code if failed
    public fun lt(left: u32, right: u32, err: u64) {
        if (left >= right) {
            debug::print(
                &string_utils::format2(
                    &b"Assertion failed:\n    Expected: {} < {}", left, right
                )
            );
            abort err
        }
    }

    /// Asserts that the left value is less than or equal to the right, returning the error code if failed
    public fun le(left: u32, right: u32, err: u64) {
        if (left > right) {
            debug::print(
                &string_utils::format2(
                    &b"Assertion failed:\n    Expected: {} <= {}", left, right
                )
            );
            abort err
        }
    }

    /// Asserts that the left value is greater than the right, returning the error code if failed
    public fun gt(left: u32, right: u32, err: u64) {
        if (left <= right) {
            debug::print(
                &string_utils::format2(
                    &b"Assertion failed:\n    Expected: {} <= {}", left, right
                )
            );
            abort err
        }
    }

    /// Asserts that the left value is greater than or equal to the right, returning the error code if failed
    public fun ge(left: u32, right: u32, err: u64) {
        if (left < right) {
            debug::print(
                &string_utils::format2(
                    &b"Assertion failed:\n    Expected: {} <= {}", left, right
                )
            );
            abort err
        }
    }
}
