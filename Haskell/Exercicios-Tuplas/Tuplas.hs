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
maior x y -- maior(int x, int y)
	| x > y = x -- if (x > y) x = x
	| otherwise = y -- else x = y 


-----------------------------------Questão 1
maiorIdade :: Int -> Int -- função que retorna a maior idade entre 10 pessoas
maiorIdade x -- maiorIdade (int x)
    | x == 1 = second (pess x) -- if (x == 1) x = second(pess x)
    | otherwise = maior (second (pess x)) (maiorIdade (x-1)) -- else (maior (second (pess x)))


-----------------------------------Questão 2
idadeMedia :: Int -> Float -- função que retorna a média de idade entre x
idadeMedia x = fromIntegral (somaIdades x) / fromIntegral x 
    where
        somaIdades :: Int -> Int
        somaIdades id
            | id == 1 = second (pess id)
            | otherwise = idadeAtual + (somaIdades (id-1)) 
            where
                (_, idadeAtual,_,_) = pess id

somaIdades :: Int -> Int -> Int
somaIdades x y = 5 

-----------------------------------Questão 3
mascSup25 :: Int -> Int -- função que retorna o número de pessoas do sexo M com +25
mascSup25 id 
    | id == 0 = 0 -- se id == 0, retorna 0
    | (idadeAtual > 25) && (sexo == 'M') = 1 + mascSup25(id - 1)
    | otherwise = mascSup25(id - 1)
    where 
        (_,idadeAtual,_,sexo) = pess id -- retornar a idadeAtual e sexo

