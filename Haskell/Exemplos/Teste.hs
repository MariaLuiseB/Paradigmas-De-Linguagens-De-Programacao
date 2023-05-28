module Teste where

--Assinatura de Função
adicionaDois :: Int  -> Int --Recebe um tipo Int e retorna um tipo Int
somaTres :: Int -> Int -> Int -> Int
adicionaQuatro :: [Int] -> [Int]
fatorial :: Int -> Int 
soma :: Int -> Int

adicionaDois x = x + 2 

somaTres x y z = x + y + z

adicionaQuatro xs = [x+4 | x <- xs, (mod x 2) /= 0] -- xs é a lista inteira 

-- x = 5 -> 5 * 4 = 20 * 3 = 60 * 2 = 120 * 1 = 120
-- 0! = 1
-- 4 * 3 = 12 * 2 = 24 * 1 = 24
fatorial x = if x == 0 then 1 else x * fatorial(x-1)


soma x = if x >= 10 then x else x + soma (x+1)




