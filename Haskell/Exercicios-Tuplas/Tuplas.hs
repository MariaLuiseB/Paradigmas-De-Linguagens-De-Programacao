import Char 
type Pessoa = (String, Int, Float, Char) 
 
pess :: Int->Pessoa -- função que retorna uma pessoa
pess x 

 |x==1 = ("Rosa", 27, 1.66,'F') 
 |x==2 = ("João", 26, 1.85,'M') 
 |x==3 = ("Maria", 67, 1.55,'F') 
 |x==4 = ("Jose", 48, 1.78, 'M') 
 |x==5 = ("Paulo", 24, 1.93, 'M') 
 |x==6 = ("Clara", 38, 1.70,'F') 
 |x==7 = ("Bob", 12, 1.45, 'M') 
 |x==8 = ("Rosana", 31, 1.58,'F') 
 |x==9 = ("Daniel", 75, 1.74, 'M') 
 |x==10 = ("Jocileide", 21, 1.69,'F') 
 |otherwise = ("Acabou!",0, 0.0, 'x')


second :: Pessoa -> Int -- função que retorna a idade da pessoa
second (_,b,_,_) = b 


maior :: Int -> Int -> Int -- função que retorna o maior entre dois inteiros
maior x y 
	| x > y = x
	| otherwise = y 

maiorIdade :: Int -> Int -- função que retorna a maior idade entre 10 pessoas
maiorIdade x 
    | x == 1 = second (pess x) -- caso base da recursão 
    | otherwise = maior (second (pess x)) (maiorIdade (x-1)) -- recursão que retorna a maior idade entre as pessoas

idadeMedia :: Int -> Float -- função que retorna a média de idade entre 10 pessoas


