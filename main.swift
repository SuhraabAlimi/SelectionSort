func readInput(unsorted: inout [String])
{
    while let line = readLine()
    {
        unsorted.append(line)
    }

}
func selectionSort(_ array: [String]) -> [String] {
    var arrayz = array
    var sussy = 0
//        print("Pass: 0, Swaps: 0/0, Array: \(arrayz)")
    for x in 0 ..< arrayz.count - 1 {
        var lowestone = x
        for y in x + 1 ..< arrayz.count {
            if arrayz[y] < arrayz[lowestone] {
                lowestone = y
            }
        }

        if x != lowestone {
            let temp1 = arrayz[x]
            let temp2 = arrayz[lowestone]
            arrayz[x] = temp2
            arrayz[lowestone] = temp1
        }
        sussy += 1
  //      print("Pass: \(sussy), Swaps: 1/\(sussy), Array: \(arrayz)")
    }
    return arrayz
}
//1506 Wesley Dr Allen TX 75013
//+1 (469) 642-5227
//https://cs.utdallas.edu/people/faculty/gogate-vibhav/

var unsorted = [""]
readInput(unsorted:&unsorted)
unsorted.remove(at: 0)
print(selectionSort(unsorted))
