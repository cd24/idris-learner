module Main

import Average

toLine : String -> String
toLine = (++ "\n")

main : IO ()
main = repl prompt $ toLine . (outputPrefix ++) . show . averageWordLen
        where
            prompt = "Enter a String: "
            outputPrefix = "The average word length is "
