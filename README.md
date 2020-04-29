# Crossword
### A crossword puzzle algorithm for the (S N A P interview)

**Provides a typealias for a matrix of Strings.**  

```Swift
```

**Primary method signature:**

```Swift
func answer(for words: [String]) -> Crossword
```

**light weight syntax:**

```Swift
let crossword = [
    ["W", "P", "C"],
    ["T", "R", "A"],
    ["E", "A", "T"],
]
print(crossword.answer(for: ["CAT", "EAR", "W"]))
/*
Output: 
[["W", "", "C"], ["", "", "A"], ["", "", "T"]]
*/
```
