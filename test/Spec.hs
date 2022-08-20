import Test.HUnit
import Money

testMultiplication :: Test
testMultiplication = "testMultiplication" ~: do 
                     five <- getDollar 5
                     assertEqual "$5 * 2 = $10" (times five 2) (Dollar 10)
                     assertEqual "$5 * 3 = $15" (times five 3) (Dollar 15)

getDollar :: Int -> IO Dollar
getDollar x = return (Dollar x)

tests :: Test
tests = TestList 
    [ testMultiplication
    ]

main :: IO Counts
main = runTestTT tests
