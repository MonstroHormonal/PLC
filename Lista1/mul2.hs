mul2 :: [Int] -> [Int] -> [Int]
mul2 [] [] = []
mul2 [] (b:bs) =  0 : mul2 [] bs  
mul2 (a:as) [] = 0 : mul2 as []
mul2 (a:as) (b:bs) = (a * b) : mul2 as bs

main = do
    sa <- getLine
    let a = read sa :: [Int]
    sb <- getLine
    let b = read sb :: [Int]
    let result = mul2 a b
    print result

--Recebe 2 listas de inteiros e retorna uma lista com o produto elemento por elemento entre as duas listas.

--Caso as listas não tenham o mesmo tamanho multiplique por 0 os elementos restantes.