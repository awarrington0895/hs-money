import Test.HUnit
import Money


fiveDollars :: Dollar 
fiveDollars = Dollar 5

test1 :: Test
test1 = TestCase $ (assertEqual "Basic assertion" 1 1)

testMultiplication :: Test
testMultiplication = TestCase $ (assertEqual "$5 * 2 = $10" (times fiveDollars 2) (Dollar 10))

tests :: Test
tests = TestList 
    [ test1
    , testMultiplication
    ]

main :: IO Counts
main = runTestTT tests
