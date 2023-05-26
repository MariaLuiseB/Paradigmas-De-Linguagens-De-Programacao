(λx.(λy.(x)(y)y)) λz.(x)(z)(λu.λv.u)w 

(\x -> (\y -> (x)(y)y)) (\z -> (x)(z)(\u -> \v -> u) w)

(\y -> (\z -> (x)(z) (\u -> \v -> u) w) (y)y)

(\z -> (x)(z)(\u -> \v -> u) w)(y)y

(\z -> (x)(z)(\u -> \v -> u) w) y

(x)((\z -> (x)(z)(\u -> \v -> u) w) ) y

(x)((\u -> \v -> u) w) y

(x)(w) y


