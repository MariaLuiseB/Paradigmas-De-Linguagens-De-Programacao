(((λx.λy.λz.((x) z)(y) z)(λu.λv.u) w) λs. s) t
(((\x y z -> ((x) z) (y) z) (\u v -> u) w) (\s -> s)) t

(\u v -> u) w
(\v -> w) 
(((\x y z -> ((x) z) (y) z) (\v -> w)) (\s -> s)) t

(\x y z -> ((x) z) (y) z) (\v -> w)
(\y z -> ((\v -> w) z) (y) z)
((\y z -> ((\v -> w) z) (y) z) (\s -> s)) t

(\y z -> ((\v -> w) z) (y) z) (\s -> s)
(\z -> ((\v -> w) z) (\s -> s) z) t

(\z -> ((\v -> w) z) (\s -> s) z) t
((\v -> w) t) (\s -> s) t
((w)t (s)t)