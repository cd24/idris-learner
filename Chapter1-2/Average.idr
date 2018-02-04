module Average

export
average : List Nat -> Double
average elems = let summed = sum elems
                    len = length elems in
                    cast summed / cast len

||| averages the length of each word splitting on spaces
||| @str a string containing words seperated by whitespaces
export
averageWordLen : (str: String) -> Double
averageWordLen = average . map length . words
