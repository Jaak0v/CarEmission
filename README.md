
<!-- README.md is generated from README.Rmd. Please edit that file -->

# CarEmission

<!-- badges: start -->

<!-- badges: end -->

Pakiet `CarEmision` powstał na potrzeby projektu z przedmiotu “Metody
Inwentaryzacji i Szacowania Emisji”. Jego głównym zadaniem jest
obliczanie poziomu emisji zanieczyszczeń wydzielanych przez poszczególne
typy aut na podstawie danych Europejskiej Agencji Środowiska (EEA).
Dodatkowym autem jest możliwość zwizualizowania wybranych danych na
różnego rodzaju wykresach przy użyciu przygotowanych i zawartych w
pakiecie funkcji.

## Proces instalacji pakietu:

``` r
# w razie potrzeby należy zainstalować pakiet devtools
if (!require(devtools)) {install.packages("devtools"); require(devtools)}

# instalacja z GitHub (bez winiety)
install_github("Jaak0v/CarEmission")
# instalacja z GitHub (z winietą)
install_github("Jaak0v/CarEmission", force = T, build_vignettes= T)
# lub w razie problemów z komenda install_github
install_git("https://github.com/Jaakov/CarEmission")
library(CarEmission)
```

## Przyklad zastosowania

W celu wygenerowania danych i obliczenia emisji poszczególnych rodzajów
transportu należy skorzystać z funkcji `CarEmission` z domyślnymi
określonymi już w funkcji parametrami:

``` r
Emission()
```

W celu wygenerowania przykładowej wizualizacji graficznej w postaci
wykresu należy skorzystać z przygotowanej funkcji pokazowej:

``` r
Emsplot("Example")
```

## Dostępne rodzaje wykresów

``` r
#Boxplot
Emsplot("box",out, Segment, Emisja, Segment, "Emisja z podzialem na segment")
#Punktowy
Emsplot("point",out, Segment, Emisja, Segment, "Emisja z podzialem na segment")
#Punktowy z przedzialem ufnosci
Emsplot("point2", out, Nat, Emisja, Category,  "Netezenie i emisja ze wzgledu na kategorie")
#Slupkowy
Emsplot("bar",out, Fuel, Emisja, NULL, "Poziom emisji ze wzgledu na rodzaj paliwa")
```

## Własna konfiguracja

W celu dobrego zrozumienia działa funkcji wizualizujących wygenerowane
przy pomocy funkcji Emission() danych należy zapoznać się z winietą
opisującą krok po kroku działanie pakietu. W tym celu należy skorzystać
z funkcji:

``` r
# Podgląd winiety w przeglądarce
browseVignettes("CarEmission")
# przejrzyj w oknie pomocy
vignette("CarEmission")
```
