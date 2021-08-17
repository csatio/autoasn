
<!-- README.md is generated from README.Rmd. Please edit that file -->

# autoasn

<!-- badges: start -->
<!-- badges: end -->

Pacote R con funções de treinamento e score para a base auto.

``` r
library(readxl)
auto=read_excel("data/auto.xlsx")
knitr::kable(head(auto))
```

| mpg | cylinders | displacement | horsepower | weight | acceleration | year | origin | name                      |
|----:|----------:|-------------:|-----------:|-------:|-------------:|-----:|-------:|:--------------------------|
|  18 |         8 |          307 |        130 |   3504 |         12.0 |   70 |      1 | chevrolet chevelle malibu |
|  15 |         8 |          350 |        165 |   3693 |         11.5 |   70 |      1 | buick skylark 320         |
|  18 |         8 |          318 |        150 |   3436 |         11.0 |   70 |      1 | plymouth satellite        |
|  16 |         8 |          304 |        150 |   3433 |         12.0 |   70 |      1 | amc rebel sst             |
|  17 |         8 |          302 |        140 |   3449 |         10.5 |   70 |      1 | ford torino               |
|  15 |         8 |          429 |        198 |   4341 |         10.0 |   70 |      1 | ford galaxie 500          |

## Installation

``` r
remotes::install_github("csatio/autoasn")
```

``` r
library(autoasn)
## basic example code
```
