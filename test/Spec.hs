import Test.HUnit

foo :: Int -> (Int, Int)
foo x = (1, 2)

test1 :: Test
test1 = TestCase $ (assertEqual "for (foo 3)," (1,2) (foo 3))

tests :: Test
tests = TestList 
    [ test1
    ]

main :: IO Counts
main = runTestTT tests
