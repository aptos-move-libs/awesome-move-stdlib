#[test_only]
module awesome_stdlib::assert_test {
    use awesome_stdlib::assert;

    #[test]
    fun test_assert() {
        assert::eq(b"hello", b"hello", 0);
        assert::ne(b"hello", b"", 1);
    }
}
