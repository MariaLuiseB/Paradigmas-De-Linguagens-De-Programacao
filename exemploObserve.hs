import Hugs.Observe
conta:: [t] -> Int
conta [] = 0
conta(a:x) = 1 + (observe "fun" | conta x)

------ 1º chamada
conta[13, 2, 20, 10]
a = [13] -- cabeça
x = [2,20,10] -- corpo
Retorna 4

----- 2° chamada 
conta[2, 20, 10]
a = [2] -- cabeça
x = [20,10] -- corpo
Retorna 3

----- 3° chamada 
conta[20, 10]
a = [20] -- cabeça
x = [10] -- corpo
Retorna 2

----- 4° chamada 
conta[10]
a = [10] -- cabeça
x = [0] -- corpo
Retorna 1

----- 5° chamada 
conta[] = 0
a = [0] -- cabeça
x = [0] -- corpo
Retorna 0 
