// The following code is missing the function `add1`.
// 1. Click on "Run" to see the error.
// 2. Write the function `add1`, based on `add1_square`, so
//    that the program terminates successfully.
//
// Note that `add1` doesn't have to call other functions.
//
// You can learn more about functions [here](https://www.cairo-lang.org/docs/how_cairo_works/functions.html).
%builtins output

from starkware.cairo.common.serialize import serialize_word

func add1(x: felt) -> (res: felt) {
    return (res=x + 1);
}

func add1_square(x: felt) -> (x: felt) {
    // Call `add1` and unpack the result into `z`.
    let (z) = add1(x);
    return (x=z * z);
}

func main{output_ptr: felt*}() {
    // Call `add1_square` and save the result into `res`.
    let (res) = add1_square(x=12);

    // Verify the computation.
    assert res = (12 + 1) * (12 + 1);
    
    serialize_word(res);
    return ();
}
