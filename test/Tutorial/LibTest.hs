{-# OPTIONS_GHC -F -pgmF htfpp #-}
module Tutorial.LibTest where
import Tutorial.Lib

import Test.Framework

test_nonEmpty :: IO ()
test_nonEmpty = do assertEqual [1] (myReverse [1])
                   assertEqual [3,2,1] (myReverse [1,2,3]) 

test_empty :: IO ()
test_empty = assertEqual ([] :: [Int]) (myReverse [])

prop_reverse :: [Int] -> Bool
prop_reverse xs = xs == myReverse (myReverse xs)