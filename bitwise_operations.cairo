%builtins bitwise

from starkware.cairo.common.bitwise import bitwise_and, bitwise_xor
from starkware.cairo.common.cairo_builtins import BitwiseBuiltin

// Returns the xor of the last two hexadecimal digits.
func xor_last_hex_digits{bitwise_ptr: BitwiseBuiltin*}(x: felt) -> felt {
    // Fix and uncomment the line below.
    let (digit0) = bitwise_and(x, 0x0F);  // with x = 0x1234, return 4

    let (shifted_digit1) = bitwise_and(x, 0xF0);
    tempvar digit1 = shifted_digit1 / 0x10;

    let (digit0_xor_digit1) = bitwise_xor(digit0, digit1); 
    return digit0_xor_digit1;
}

func main{bitwise_ptr: BitwiseBuiltin*}() {
    let res = xor_last_hex_digits(0x1234);
    assert res = 7;
    return ();
}