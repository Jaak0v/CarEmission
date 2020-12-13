
<!-- README.md is generated from README.Rmd. Please edit that file -->

# CarEmission

<!-- badges: start -->

<!-- badges: end -->

Pakiet „CarEmision” powstał na potrzeby projektu z przedmiotu “Metody
Inwentaryzacji i Szacowania Emisji”. Jego głównym zadaniem jest
obliczanie poziomu emisji zanieczyszczeń wydzielanych przez poszczególne
typy aut na podstawie danych Europejskiej Agencji Środowiska (EEA).
Dodatkowym autem jest możliwość zwizualizowania wybranych danych na
różnego rodzaju wykresacrjakub999h przy użyciu przygotowanych i
zawartych w pakiecie funkcji.

## Proces instalacji pakietu:

``` r
# w razie potrzeby należy zainstalować pakiet devtools
if (!require(devtools)) {install.packages("devtools"); require(devtools)}

# instalacja z GitHub
install_github("Jaak0v/CarEmission", force = T, build_vignettes = T)
# lub w razie problemów z komenda install_github
install_git("https://github.com/Jaakov/CarEmission")
library(CarEmission)
```

## Przyklad zastosowania

This is a basic example which shows you how to solve a common problem:

``` r

## basic example code
```

What is special about using `README.Rmd` instead of just `README.md`?
You can include R chunks like so:

``` r
summary(cars)
#>      speed           dist       
#>  Min.   : 4.0   Min.   :  2.00  
#>  1st Qu.:12.0   1st Qu.: 26.00  
#>  Median :15.0   Median : 36.00  
#>  Mean   :15.4   Mean   : 42.98  
#>  3rd Qu.:19.0   3rd Qu.: 56.00  
#>  Max.   :25.0   Max.   :120.00
```

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date.

You can also embed plots, for example:

<img src="man/figures/README-pressure-1.png" width="100%" />

In that case, don’t forget to commit and push the resulting figure
files, so they display on GitHub\!
