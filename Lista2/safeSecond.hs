import Prelude hiding (Maybe (..))

import Prelude hiding (Maybe (..))
import Data.Array.Base (safe_scale)

data Maybe a = Just a |
               Nothing
               deriving(Show)

safeSecond :: [a] -> Maybe a
safeSecond (_:x:_) = Just x
safeSecond _ = Nothing

main = do
       a <- getLine
       let result = safeSecond (read a::[Int])
       print result
       
