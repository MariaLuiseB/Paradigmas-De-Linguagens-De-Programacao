(λx.z)(λx.xxy)((λx.xxy))
(\x -> z)(\x -> xxy)((\x -> xxy))
((\x -> z) ((\x -> xxy) (\x -> xxy) (\x -> xxy) y))
((\x -> z) (\x -> xxy) (\x -> xxy) (yyy))
((\x -> z) (yyyyyyyyyyyyyyy))


\x -> (\x' -> (\x'' -> (\f x''' -> f (f (f x''''))) (\f x''' -> f (f (f x''''))) x'') x') x
\x -> (\x' -> (\x'' -> (\f x''' -> f (f (f x''''))) (\f x''' -> f (f (f x''''))) x'') x') x


Para calcular ADD DOIS CINCO, onde ADD = \n m -> n INC m, temos:

ADD = \n m -> n INC m
DOIS = \f x -> f (f x)
CINCO = \f x -> f (f (f (f (f x))))

Substituindo DOIS e CINCO em ADD:

ADD DOIS CINCO = (\n m -> n INC m) (\f x -> f (f x)) (\f x -> f (f (f (f (f x)))))

Aplicando a substituição:

ADD DOIS CINCO = (\f x -> f (f x)) INC (\f x -> f (f (f (f (f x)))))

Redução beta:

ADD DOIS CINCO = (\f x -> f (f x)) (\f x' -> f (f (f x'))) (\f x -> f (f (f (f (f x)))))

Redução beta:

ADD DOIS CINCO = (\f x' -> f (f (f x'))) (\f x -> f (f (f (f (f x)))))

Aplicando a função (\f x' -> f (f (f x'))) em (\f x -> f (f (f (f (f x))))):

ADD DOIS CINCO = (\f x' -> f (f (f x'))) (\f x -> f (f (f (f (f x)))))
→ (\x' -> (\f x -> f (f (f x'))) (\f x -> f (f (f (f (f x)))))) x'

Redução beta:

ADD DOIS CINCO = (\x' -> (\f x -> f (f (f x'))) (\f x -> f (f (f (f (f x)))))) x'
→ (\x' -> (\x -> (\f x -> f (f (f x'))) (\f x -> f (f (f (f (f x)))))) x) x'

Redução beta:

ADD DOIS CINCO = (\x' -> (\x -> (\f x -> f (f (f x'))) (\f x -> f (f (f (f (f x)))))) x) x'
→ (\x' -> (\x -> (\f x' -> f (f (f x'))) (\f x -> f (f (f (f (f x)))))) x) x'

Resultado:

ADD DOIS CINCO = (\x' -> (\x -> (\f x' -> f (f (f x'))) (\f x -> f (f (f (f (f x)))))) x) x'

Portanto, ADD DOIS CINCO resulta na expressão acima, que ainda não foi reduzida.



Y fat = (\f -> (\x -> f (x x)) (\x -> f (x x))) fat
= (\x -> fat (x x)) (\x -> fat (x x))

Em seguida, substituímos Y fat em fat (Y fat) 4:

fat (Y fat) 4 = (\f x -> if x == 0 then 1 else x * f (x - 1)) (Y fat) 4
= (\x -> if x == 0 then 1 else x * (Y fat) (x - 1)) 4
= if 4 == 0 then 1 else 4 * (Y fat) (4 - 1)
= 4 * (Y fat) 3

Continuamos reduzindo a expressão substituindo (Y fat) em (Y fat) 3:

4 * (Y fat) 3 = 4 * fat (Y fat) 3
= 4 * (\f x -> if x == 0 then 1 else x * f (x - 1)) (Y fat) 3
= 4 * (\x -> if x == 0 then 1 else x * (Y fat) (x - 1)) 3
= 4 * (if 3 == 0 then 1 else 3 * (Y fat) (3 - 1))
= 4 * (3 * (Y fat) 2)

Continuamos substituindo (Y fat) em (Y fat) 2:

4 * (3 * (Y fat) 2) = 4 * (3 * fat (Y fat) 2)
= 4 * (3 * (\f x -> if x == 0 then 1 else x * f (x - 1)) (Y fat) 2)
= 4 * (3 * (\x -> if x == 0 then 1 else x * (Y fat) (x - 1)) 2)
= 4 * (3 * (if 2 == 0 then 1 else 2 * (Y fat) (2 - 1)))
= 4 * (3 * (2 * (Y fat) 1))

Continuamos substituindo (Y fat) em (Y fat) 1:

4 * (3 * (2 * (Y fat) 1)) = 4 * (3 * (2 * fat (Y fat) 1))
= 4 * (3 * (2 * (\f x -> if x == 0 then 1 else x * f (x - 1)) (Y fat) 1))
= 4 * (3 * (2 * (\x -> if x == 0 then 1 else x * (Y fat) (x - 1)) 1))
= 4 * (3 * (2 * (if 1 == 0 then 1 else 1 * (Y fat) (1 - 1))))
= 4 * (3 * (2 * (1 * (Y fat) 0)))

Continuamos substituindo (Y fat) em (Y fat) 0:

4 * (3 * (2 * (1 * (Y fat) 0))) = 4 * (3 * (2 * (1 * fat (Y fat) 0)))
= 4 * (3 * (2 * (\f x -> if x == 0 then 1 else x * f (x - 1)) (Y fat) 0))
= 4 * (3 * (2 * (\x -> if x == 0 then 1 else x * (Y fat) (x - 1)) 0))
= 4 * (3 * (2 * (if 0 == 0 then 1 else 0 * (Y fat) (0 - 1))))
= 4 * (3 * (2 * 1))

Por fim, realizamos as multiplicações restantes:

4 * (3 * (2 * 1)) = 4 * (3 * 2)
= 4 * 6
= 24

Portanto, FAT 4 é igual a 24.











