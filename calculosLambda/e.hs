(((λx.(λz.(x)(y)y)λy.(x)(y)y)λz.λu.λv.(u)(z)v)(λr.λs.r)t)w
(((\x -> (\z -> (x)(y)y) \y -> (x1)(y1)y1) \z u v -> (u)(z)v) (\r s -> r) t) w

(((\z -> \y -> \z u v -> (u)(z)v) (y)y) (\y -> (x1)(y1)y1) (\r s -> r) t) w

((\z -> \z u v -> (u)(z)v) (\y -> (x1)(y1)y1) (\r s -> r) t) w

((\z u v -> (u)(\y -> (x1)(y1)y1) v) (\r s -> r) t) w

((\z u v -> (u)(x)(v)v) (\r s -> r) t) w

(\u v -> (u)(x)(v) (\r s -> r) t) w

(\v -> w (x)(v)) (s -> t)

w (x)(t) 