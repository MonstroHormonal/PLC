btoi :: String -> Int
btoi [] = 0
btoi "0" = 0
btoi (st:str) = ((fromEnum st - fromEnum '0') * (2 ^ (length (st:str) - 1))) + btoi str 

main = do
    s <- getLine
    let result = btoi s
    print result