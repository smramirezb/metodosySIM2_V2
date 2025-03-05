# Propiedades de los estimadores
# Para una variable con distribución uniforme
# U(a=0, b=20) se desea determinar las 
#propiedades que tienen los siguientes 
# estimadores del parámetro b.
# T1 =2 veces la media
# T2 = el valor máximo de la muestra
# T3 = (n+1)/n por el valor máx
n=100
m=1000*n
Y=matrix(runif(m, min=0, max=20), ncol=n) # matriz de datos m x n
Mx=apply(Y,1,mean)
Max=apply(Y,1,max)

T1=2*Mx
T2=Max
T3=((n+1)/n)*T2

T123=data.frame(T1,T2,T3)
boxplot(T123, main="propiedades de los estimadores")
abline(h=20, col="red")
summary(T123)
