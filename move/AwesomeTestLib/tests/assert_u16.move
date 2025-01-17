#[test_only]
module awesome_stdlib::assert_u16_test {
    use awesome_stdlib::assert_u16::{eq, ne, lt, le, gt, ge};

    #[test]
    fun test_assert() {
        eq(0, 0, 0);
        ne(0, 1, 1);
        lt(0, 1, 2);
        le(0, 0, 3);
        le(0, 1, 4);
        gt(1, 0, 5);
        ge(1, 1, 6);
        ge(1, 0, 7);
    }
}
