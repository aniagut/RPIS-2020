# RPIS-2020
Zadania z ćwiczeń laboratoryjnych z przedmiotu Rachunek Prawdopodobieństwa i Statystyka realizowanego na III semestrze Informatyki na AGH.

## Treści zadań
 * [Zadanie 1](#zadanie-1)
 * [Zadanie 2](#zadanie-2)
 * [Zadanie 3](#zadanie-3)
 * [Zadanie 4](#zadanie-4)
 * [Zadanie 5](#zadanie-5)
 * [Zadanie 6](#zadanie-6)
 * [Zadanie 7](#zadanie-7)
 * [Zadanie 8](#zadanie-8)
 * [Zadanie 9](#zadanie-9)
 
 ### Zadanie 1
Zadania oparte są na zbiorze danych precip z biblioteki standardowej R (?precip). Napisz skrypt (pojedynczy plik z rozszerzeniem .R)\
zawierający instrukcje wydobywające następujące informacje.

1.Jaka jest mediana opadów w rejestrowanych miastach?\
2.Jakie jest odchylenie standardowe opadów?\
3.W których miastach opady są równe średniej?\
4.W których miastach opady różnią się od mediany nie więcej niż 0.5 cala?\
5.W którym mieście opady są najmniejsze?\
6.Ile jest miast z opadami powyżej średniej?\
7.W których miastach opady leżą powyżej górnego kwartyla?\
8.W których miastach opady leżą poniżej dolnego kwartyla?\
W ostatnich 2 zadaniach można skorzystać z funkcji fivenum().

### Zadanie 2
Zadanie oparte jest na zbiorze danych Auto. Należy napisać skrypt w R, który znajduje średnie zużycie paliwa (mpg) wszystkich samochodów.

### Zadanie 3
Zadania oparte są na zbiorze danych Auto. Należy napisać skrypt w R, który znajduje następujące informacje.

1.Jakie jest średnie zużycie paliwa samochodów, które mają 4 cylindry?\
2.Jaka jest mediana wagi (weight) wszystkich samochodów?\
3.Jakie jest średnie zużycie paliwa samochodów wyprodukowanych w roku 72?\
4.Jaka jest wariancja przyspieszenia (acceleration) wszystkich samochodów?\
5.Jaka jest wariancja przyspieszenia samochodów japońskich (origin == 3)?\
6.Ile jest samochodów, których moc (horsepower) jest powyżej średniej?\
7.Jaka jest maksymalna moc samochodów, których waga jest poniżej średniej?\
8.Ile jest samochodów, których zużycie paliwa jest poniżej średniej (czyli mpg jest powyżej średniej)?\
9.Jaka jest minimalna liczba cylindrów samochodów, których zużycie paliwa jest poniżej średniej?\
10.Ile jest samochodów o maksymalnej pojemności silnika (displacement)?\
11.Jakie jest maksymalna waga (weight) samochodów, których pojemność silnika jest mniejsza od jej mediany.

### Zadanie 4
Zaimplementuj w R obsługę skonczonej przestrzeni probabilistycznej Ω = {1, . . . , N}. Załozenia są następujące:\
 • Przestrzen jest reprezentowana przez wektor długości N o składowych nieujemnych, których suma wynosi 1;\
   składowa numer i tego wektora oznacza prawdopodobienstwo zdarzenia {i}.\
 • Zdarzenia reprezentowane są przez wektory logiczne o długosci N tak, że np. zdarzenie {1, 3} dla N = 6\
   jest reprezentowane przez wektor c(TRUE, FALSE, TRUE, FALSE, FALSE, FALSE).\
 • Należy skonstruować funkcję event(x), która będzie tworzyć takie wektory na podstawie odpowiednich\
   wektorów liczbowych, np. wektor z poprzedniego punktu byłby równy event(c(1, 3)); “nadmiarowe”\
   zdarzenia elementarne mają byc ignorowane, czyli np. event(7) dla N = 6 powinno zwracac zdarzenie\
   niemożliwe (czyli rep(FALSE, 6)).\
 • Należy skonstruować funkcje union(e1, e2), intersect(e1, e2), complement(e) wyznaczające, odpowiednio, sumę część wspólną i dopełnienie podanych zdarzeń.\
 • Należy zaimplementować funkcję prob(space, event) liczącą prawdopodobieństwo zdarzenia\
   event w przestrzeni reprezentowanej przez wektor space.
  
 ### Zadanie 5
Liczba bramek strzelonych przez w kazdym meczu przez pewnś drużynę piłkarską ma rozkład Pois(2).\
Jakie jest prawdopodobienstwo zdobycia przez tę drużynę co najmniej 5 bramek w meczu?

### Zadanie 6
Wylosowano 90 studentów i utworzono szereg rozdzielczy ich nieobecnosci w ciągu semestru.\
Zakładamy, ze liczba nieobecności ma rozkład Poissona z nieznanym parametrem  λ. Pamiętając, że λ jest\
wartością oczekiwannąw rozkładzie Poissona oblicz estymowaną (czyli wyznaczoną przez dostępne dane) wartość\
tego parametru w naszym przykładzie, a następnie oblicz prawdopodobieństwo tego, że student będzie w ciągu semestru\
nieobecny co najmniej 4 razy.\
Liczba nieobecności 0 1 2 3 4 5 6 7\
Liczba studentów 12 20 27 18 7 3 2 1\

### Zadanie 7
Napisz skrypt w R implementujący rozkład dyskretny dwuwymiarowy. Załozenia są następujące: \
• Zbiór wartości prawdopodobnych S ma postać {1, . . . , m} × {1, . . . , n} dla pewnych m, n ∈ N.\
• Rozkład (pełny) jest zrealizowany w postaci macierzy prob o wyrazach nieujemnych sumujących się do 1,\
  tzn. jeśli X i Y są składowymi zmiennej o implementowanym rozkładzie, t prob[i, j] = P(X = i, Y = j).\
• Macierze z poprzedniego punktu są tworzone przez funkcję prob(m), której argumentem jest macierz o\
  wyrazach nieujemnych niekoniecznie sumujących się do 1 — funkcja ma dokonywać stosownej normalizacji\
  (tzn. dzielić wszystkie wyrazy przez ich sumę).\
• Funkcja boundary(prob, i) zwraca wektor rozkładu brzegowego względem zmiennej numer i (tzn.\
  boundary(prob, 1) zwraca wektor rozkładu brzegowego względem X).\
• Funkcja conditional(prob, i, v) zwraca wektor rozkładu warunkowego względem wartosci v\
  zmiennej numer i, np. conditional(prob, 1, 3)[2] = P(Y = 2|X = 3).\
• Funkcja mean(prob, i) zwraca wartość oczekiwaną składowej numer i, jeśli ma wartość NA (która\
  ma byc domyślna) powinien zostać zwrócony wektor wartości oczekiwanej.\
• Funkcja covariance(prob) zwraca macierz kowariancji.\
• Funkcja independent(prob) zwraca TRUE jesli składowe są niezależne, FALSE w przeciwnym\
  przypadku.\
  
### Zadanie 8
Rozkład pomiarów głębokosci morza w pewnym rejonie jest normalny, przy nieznanym m i σ = 5 m.\
Dokonano 5 niezaleznych pomiarów głębokości o wynikach: 862, 870, 876, 866, 871. Na poziomie istotności α = 0.05\
zweryfikować hipotezę, że średnia głębokość morza jest równa 870 m.\

### Zadanie 9
Dla wybranego zbioru danych (o co najmniej 5 zmiennych) metodą regresji liniowej najmniejszych kwadratów wykonaj analizę zależności wybranej zmiennej od pozostałych.\ Wybrana zmienna odpowiedzi powinna być numeryczna. Wśród pozostałych co najmniej 2 też powinny być numeryczne. Dla każdego z predyktorów należy odpowiedzieć na następujące\ pytania.

1.Czy zmienna odpowiedzi zależy istotnie od danego predyktora?\
2.Czy zależność jest rosnąca czy malejąca?\
3.Jaka jest jakość dopasowania modelu liniowego? Czy są przesłanki do rozważania zależności nieliniowej?\
Należy sporządzić wykresy prostych regresji na tle danych. 



