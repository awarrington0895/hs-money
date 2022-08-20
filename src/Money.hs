module Money
    ( someFunc
    , Dollar(..)
    , times
    ) where

someFunc :: IO ()
someFunc = putStrLn "Test"

data Dollar = Dollar Int deriving (Eq, Show)

times :: Dollar -> Int -> Dollar
times (Dollar amount) multiplier = Dollar $ amount * multiplier
