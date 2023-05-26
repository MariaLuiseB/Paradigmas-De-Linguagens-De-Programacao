( ( (λx. λy. λz. (y) x) (x) y) (u) z) y
( ( (\x → \y →\z → (y) x) (x1)y1) (u)z1) y2
 
( ( (\x y z → (y) x) (x1)y1) (u)z1) y2

((\x y z → (y) x) (x1)y1)
(\y z → (y) (x1)y1)

((\y z → (y) (x1)y1)   (u)z1)
(\z → (((u)z1) (x1)y1))

(\z → (((u)z1) (x1)y1)) y2
((u)z1 (x1)y1)
(u)z (x)y