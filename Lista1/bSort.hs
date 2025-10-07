bSort :: [String] -> [String]
bSort lista | lista == sortedList = lista
            | otherwise = bSort sortedList
    where
        sortedList = sort lista
        sort :: [String] -> [String]
        sort [] = []
        sort [s] = [s]
        sort (s:t:r) | s > t     = t : sort (s:r)
                     | otherwise = s : sort (t:r)