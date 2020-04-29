## Crossword: A crossword puzzle algorithm for the (S N A P interview)

**Provides a typealias for a matrix of Strings.**  

```Swift
typealias Crossword = [[String]]
```


**Easy to use:**

```Swift
let crossword = [
    ["W", "P", "C"],
    ["T", "R", "A"],
    ["E", "A", "T"],
]
print(crossword.answer(for: ["CAT", "EAR", "W"]))

// [["W", "", "C"], ["", "", "A"], ["", "", "T"]]

```
