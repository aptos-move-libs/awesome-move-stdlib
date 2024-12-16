module greg_stdlib::math {

    // ==== Functions to help with coin math ==== //

    public fun one_decimal(num: u64): u64 {
        num * 10
    }

    public fun two_decimal(num: u64): u64 {
        num * 100
    }

    public fun three_decimal(num: u64): u64 {
        num * 1000
    }

    public fun four_decimal(num: u64): u64 {
        num * 10000
    }

    public fun five_decimal(num: u64): u64 {
        num * 100000
    }

    public fun six_decimal(num: u64): u64 {
        num * 1000000
    }

    public fun seven_decimal(num: u64): u64 {
        num * 10000000
    }

    public fun eight_decimal(num: u64): u64 {
        num * 10000000
    }
}
