import Char 
type Pessoa = (String, Int, Float, Char) -- tipo Pessoa é uma tupla-4 de String, Int, Float e Char
type Triangulo = (String, Float) -- tipo Triangulo é uma tupla-2 de String e Float
 
pess :: Int->Pessoa -- função que retorna uma pessoa
pess x -- retorna uma pessoa de acordo com o id

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
second (_,b,_,_) = b -- pega o segundo campo de Pessoa


maior :: Int -> Int -> Int -- função que retorna o maior entre dois inteiros
maior x y -- maior(int x, int y)
	| x > y = x -- if (x > y) x = x
	| otherwise = y -- else x = y 


-----------------------------------Questão 1 A
maiorIdade :: Int -> Int -- função que retorna a maior idade entre 10 pessoas
maiorIdade x -- maiorIdade (int x)
    | x == 1 = second (pess x) -- if (x == 1) x = second(pess x)
    | otherwise = maior (second (pess x)) (maiorIdade (x-1)) -- else (maior (second (pess x)))


-----------------------------------Questão 1 B
idadeMedia :: Int -> Float -- função que retorna a média de idade entre x
idadeMedia x = fromIntegral (somaIdades x) / fromIntegral x -- idadeMedia(int x), somaIdades(x) é a soma das idades de x pessoas, fromIntegral é para converter para float
    where -- where -- função local
        somaIdades :: Int -> Int -- função que retorna a soma das idades de x pessoas
        somaIdades id -- somaIdades(int id)
            | id == 1 = second (pess id) -- se id = 1, retorna a idade da pessoa 1
            | otherwise = idadeAtual + (somaIdades (id-1)) -- senao, retorna a idade da pessoa atual  e soma com a idade da pessoa anterior
            where
                (_, idadeAtual,_,_) = pess id -- retorna a idadeAtual


-----------------------------------Questão 1 C
mascSup25 :: Int -> Int -- função que retorna o número de pessoas do sexo M com +25
mascSup25 id 
    | id == 0 = 0 -- se id == 0, retorna 0
    | (idadeAtual > 25) && (sexo == 'M') = 1 + mascSup25(id - 1) -- se idadeAtual > 25 e sexo == 'M', retorna 1 + mascSup25(id - 1)
    | otherwise = mascSup25(id - 1) -- senão, retorna mascSup25(id - 1) que é o próximo id
    where 
        (_,idadeAtual,_,sexo) = pess id -- retornar a idadeAtual e sexo


-----------------------------------Questão 2
triangulo :: Int -> Int -> Int -> Triangulo 
triangulo x y z -- função que retorna o tipo de triângulo e o perímetro
    -- se um lado for igual ou maior que a soma dos outros dois, não é um triangulo 
    -- se um lado for menor que a soma dos outros dois, é um triângulo
    | (x + z) > y && (x + y) > z && (y + z) > x = (tipoTriangulo x y z, perimetro x y z)
    | otherwise = ("Com essas medidas de lados, essa forma nao pode ser considerada um triangulo.", 0)
    where
        tipoTriangulo :: Int -> Int -> Int -> String -- função que retorna o tipo de triângulo
        tipoTriangulo x y z -- tipoTriangulo(int x, int y, int z)
            | (x == y) && (y == z) = "Equilatero" -- se x == y == z, retorna "Equilatero"
            | (x == y) || (y == z) || (x == z) = "Isosceles" -- se x == y || y == z || x == z, retorna "Isosceles"
            | otherwise = "Escaleno" -- senão, retorna "Escaleno"
            
        perimetro :: Int -> Int -> Int -> Float -- função que retorna o perímetro do triângulo
        perimetro x y z = fromIntegral (x + y + z) -- retorna o perímetro do triângulo que é a soma dos lados


-----------------------------------Questão 3
somaImpar :: Int -> Int -> Int -- função que retorna a soma de todos os números ímpares de 1 à N
somaImpar n x -- somaImpar(int n, int x), n é o número que vai até, x é o número que vai somando
    | x == n = x -- se x == n, retorna x
    | otherwise = x + somaImpar n (x+2) -- senão, retorna x + somaImpar n (x+2) onde x vai somando de 2 em 2


-----------------------------------Questão 4
serie :: (Float, Float) -> Float -- função que retorna a soma da série
serie (x, y) -- serie(float x, float y)
    | y == 1 = (1/x) + (x/2) -- se y == 1, retorna (1/x) + (x/2), onde x é o primeiro elemento da tupla e y é o segundo
    | otherwise = (1/x) + (x/y) + serie (x, y-2) -- senão, retorna (1/x) + (x/y) + serie (x, y-2), onde x é o primeiro elemento da tupla e y é o segundo
