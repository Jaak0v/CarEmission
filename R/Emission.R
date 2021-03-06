#' Funkcja emisje spalin na podstawie danych zawartych w ramkach danych "wskazniki" i "input"
#'
#' Algorytm obliczen emisji:
#' Emisja = Nat x ((Alpha  x Procent^2 + Beta x Procent + Gamma + (Delta/Procent)) / (Epsilon x Procent^2 + Zita x Procent + Hta) x (1- Reduction))
#'
#' @param dane dataf
#' @param dane dataframe
#' @param kategoria character
#' @param euro character
#' @param mode character
#' @param substancja character
#' 
#' @return dataframe
#' @export
#'
#' @examples \donttest{Emission()}

Emission <- function(dane = input,
                     kategoria = "Passenger Cars",
                     #paliwo = "Petrol",
                     #segment = "Mini",
                     euro = c("Euro 4", "Euro 5"),
                     #technologia = "",
                     mode = "",
                     substancja = c("CO", "EC")) {
  out <- wskazniki %>%
    dplyr::filter(Category %in% kategoria) %>%
    dplyr::filter(Euro.Standard %in% euro) %>%
    dplyr::filter(Pollutant %in% substancja) %>%
    dplyr::filter(Mode %in% mode)
  #filter(Fuel %in% paliwo)
  #filter(Segment %in% segment)
  
  out <- inner_join(x = out, y = input, by = c("Segment","Fuel","Technology"))
  
  out <- na.omit(out) %>%
    mutate(Emisja = Nat * ((Alpha * Procent ^ 2 + Beta * Procent + Gamma + (Delta/Procent))/
                             (Epsilon * Procent ^ 2 + Zita * Procent + Hta) * (1-Reduction))
    ) %>%
    select(Category, Fuel, Euro.Standard, Technology, Pollutant, Mode, Segment, Emisja, Nat)
  
  out <<- out
  return(out)
}


