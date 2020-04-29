# Crossword
A crossword puzzle algorithm for the (S N A P interview)

Provides a typeAlias for a matrix of Strings.  

Primary method signature: `answer(for words: [String]) -> Crossword`

Usable with a light weight syntax: 

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
