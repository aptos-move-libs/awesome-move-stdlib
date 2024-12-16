#[test_only]
module greg_stdlib::debug {

    use std::string;
    use aptos_std::debug::print;

    /// Prints a vector as a string
    public fun printVecAsString(vec: &vector<u8>) {
        print(&string::utf8(*vec))
    }
}
