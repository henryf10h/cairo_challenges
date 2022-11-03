// With gap in memory.

// func main() {
//     [ap] = 100;
//     [ap + 2] = 200;
//     ret;
// }

// without gap in memory

func main() {
    [ap] = 100;
    [ap + 2] = 200;
    [ap + 1] = 67; // the order of access doesn’t matter
    ret;
}