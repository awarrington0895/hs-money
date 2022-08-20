import Test.HUnit
import Money


fiveDollars :: Dollar 
fiveDollars = Dollar 5

testMultiplication :: Test
testMultiplication = TestCase $ (assertEqual "$5 * 2 = $10" (times fiveDollars 2) (Dollar 10))

tests :: Test
tests = TestList 
    [ testMultiplication
    ]

main :: IO Counts
main = runTestTT tests
