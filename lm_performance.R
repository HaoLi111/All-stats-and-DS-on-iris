#detect power


?lm
m = lm(Petal.Length~Petal.Width,iris)
str(m)
??r.square

with(iris,cor(Petal.Length,Petal.Width))
anova(m)
s_m_ = summary(m)
s_m_$r.squared
s_m_$adj.r.squared
