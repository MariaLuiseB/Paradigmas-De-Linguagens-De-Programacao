import Hugs.Pertence
pertence:: Eq t => t -> [t] -> Bool 
pertence a [] = False
pertence a (x:z) = if (a == x) then True else pertence a z

uniao:: Eq t => [t]