module Seven where

import Data.List

--null,take,drop,fst,snd,length,max,min,head,tail,
--sum,and,product,or,reverse,init,last,
--zip,delete,deleteAll,zip3,replicate,concat,dropWhile,takeWhile

fst' (a, b) = a

snd' (a, b) = b

drop' _ [] = []
drop' 0 xs = xs
drop' n (x:xs) = drop' (n-1) xs


    --drop' 1312216 [] = []
    --drop' 0 [1..10] = [1,2,3,4,5,6,7,8,9,10]
    --drop' 3 [1..10] = [4,5,6,7,8,9,10]



take' _ [] = []
take' 0 xs = []
take' n (x:xs) = [x] ++ (take' (n-1) xs)

    --take' 1442312 [] = []
    --take' 0 [1,2,3] = [1,2,3]


head' :: [a] -> a
head' (x:xs) = x


length' :: [a] -> Integer
length' [] = 0
length' (x:xs) = 1 + (length' xs)

    --length' [1,2,3] = 3
    -- 1 + length' [2,3] -> 1+2
    -- 1 + length' [3] -> 1+1
    -- 1 + 0
    --length' [[]] = 1
    --length' [] = 0


tail' :: [a] -> [a]
tail' (x:xs) = xs


sum' [] = 0
sum' (x:xs) = x + (sum' xs)

  --sum' [1,2,3] => 1 + sum' [2,3] => 1 + 5
  --sum' [2,3] => 2 + sum' [3] => 2 + 3
  --sum' [3] = 3 + sum [0]


max' a b
  | a > b = a
  | a < b = b

min' a b
  | a < b = a
  | a > b = b

null' x
  | x == [] = True
  | otherwise = False

  --null [] = True
  --null [-1] = False
  --null [1] = False
  --null [0] =  False


init' [x] = []
init' (x:xs) = x : init' (xs)

  --init' [0] = []
  --init' [1..10] = [1,2,3,4,5,6,7,8,9]


or'[] = False
or' [False,False] = False
or' [True,False] = True
or' [False,True] = True
or' [True,True] = True

  --[False,False] = False
  --[True,False] = True
  --[False,True] = True
  --[True,True] = True


and' [] = True
and' [True,True] = True
and' [True,False] = False
and' [False,True] = False
and' [False,False] = False


product' [] = 1
product' [0] = 0
product' (x:xs) = x * (product' xs)

  --product' [1,2,3] = 6
  --product' 1*2*3 = 6

delete' _ [] = []
delete' 0 (x:xs) = xs
delete' n (x:xs) = 

  


reverse' [] = []
reverse' [n] = [n]
reverse' (x:xs) = reverse' xs ++ [x]


last' [n] = n
last' (x:xs) = last' xs



concat' [] = []

--unfinish


zip' [] [] = []

--unfinish

minimum' [n] = n

--unfinish
