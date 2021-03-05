library(ISLR)
#zadanie wykonane na zbiorze danych Auto z
#biblioteki ISLR

#Badam zale¿nosc zmiennej horsepower od
#zmiennych mpg,cylinders,displacement,weight

# horsepower ~ mpg
lm1<-lm(horsepower~mpg, data=Auto)
summary(lm1)
#Analiza wartosci Pr(>|t|) oraz Signif.codes pozwala
#na odrzucenie hipotezy (Beta1=0)- zmienne sa wiec zalezne
#zaleznosc jest malejaca (wspolczynnik Beta1=-3.8389)
#jakosc dopasowania modelu na poziomie 0.6049
plot(Auto$mpg,Auto$horsepower)
abline(lm1,col="red")
#analiza ksztaltu wykresu jest przeslanka do 
#rozwazania zaleznosci typu y=1/x

#horsepower~cylinders
lm2<-lm(horsepower~cylinders, data=Auto)
summary(lm2)
#Analiza wartosci Pr(>|t|) oraz Signif.codes pozwala
#na odrzucenie hipotezy (Beta1=0)- zmienne sa wiec zalezne
#zaleznosc jest rosnaca (wspolczynnik Beta1=19.0220)
#jakosc dopasowania modelu na poziomie 0.7099
plot(Auto$cylinders,Auto$horsepower)
abline(lm2,col="red")
#analiza ksztaltu wykresu nie pozwala na stwierdzenie
#czy mozna rozwazac inna zaleznosc niz liniowa

#horsepower~displacement
lm3<-lm(horsepower~displacement,data=Auto)
summary(lm3)
#Analiza wartosci Pr(>|t|) oraz Signif.codes pozwala
#na odrzucenie hipotezy (Beta1=0)- zmienne sa wiec zalezne
#zaleznosc jest rosnaca (wspolczynnik Beta1=0.330038)
#jakosc dopasowania modelu na poziomie 0.8051
plot(Auto$displacement,Auto$horsepower)
abline(lm3,col="red")
#ksztalt wykresu jest przeslanka do rozwazania zaleznosci 
#typu y=x^a, gdzie 1<a<2

#horsepower~weight
lm4<-lm(horsepower~weight,data=Auto)
summary(lm4)
#Analiza wartosci Pr(>|t|) oraz Signif.codes pozwala
#na odrzucenie hipotezy (Beta1=0)- zmienne sa wiec zalezne
#zaleznosc jest rosnaca (wspolczynnik Beta1=0.039177)
#jakosc dopasowania modelu na poziomie 0.7474
plot(Auto$weight,Auto$horsepower)
abline(lm4,col="red")
#ksztalt wykresu jest przeslanka do rozwazania
#zaleznosci typu y=x^a gdzie 1<a<2
