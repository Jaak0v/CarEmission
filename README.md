
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

## Installation

You can install the released version of CarEmission from
[CRAN](https://CRAN.R-project.org) with:

``` r
# w razie potrzeby należy zainstalować pakiet devtools
if (!require(devtools)) {install.packages("devtools"); require(devtools)}

# instalacja z GitHub
install_git("https://github.com/Jaakov/CarEmission")
library(CarEmission)
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(CarEmission)
#> Loading required package: tidyverse
#> -- Attaching packages ------------------------------------------------------------------------------------ tidyverse 1.3.0 --
#> <U+221A> ggplot2 3.3.2     <U+221A> purrr   0.3.4
#> <U+221A> tibble  3.0.4     <U+221A> dplyr   1.0.2
#> <U+221A> tidyr   1.1.0     <U+221A> stringr 1.4.0
#> <U+221A> readr   1.3.1     <U+221A> forcats 0.5.0
#> -- Conflicts --------------------------------------------------------------------------------------- tidyverse_conflicts() --
#> x dplyr::filter() masks stats::filter()
#> x dplyr::lag()    masks stats::lag()
#> Loading required package: magrittr
#> 
#> Attaching package: 'magrittr'
#> The following object is masked from 'package:purrr':
#> 
#>     set_names
#> The following object is masked from 'package:tidyr':
#> 
#>     extract
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
