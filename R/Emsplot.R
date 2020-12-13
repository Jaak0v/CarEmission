#' Funkcja do wizualizacji danych na podstawie danych wygenerowanych przy pomocy funkcji Emission
#'
#'
#' @return plot
#' @param x double - dane na osi x
#' @param y double - dane na osi y
#' @param data double - dane
#' @param z double
#' @param title text - Tytul
#' @param type text - Typ wykresu 
#' @export
#'
#' @examples \donttest{Emsplot("Example")}

Emsplot <- function(type,data,x,y,z,title) {
  
  x <- enquo(x)
  y <- enquo(y)
  z <- enquo(z)
  
  
  switch(type,
         "Example"={ggplot(data = out, aes(x=Segment, y=Emisja, color=Pollutant)) + 
             geom_boxplot(outlier.colour="red", 
                          outlier.shape=6, outlier.size=2, 
                          notch=FALSE) +
             ggtitle("Emisja w zależnosci od segmentu i rodzaju zanieczyszczenia") -> plot
    },
        "box"={ggplot(data, aes(!!x, !!y, color=!!z)) + 
           geom_boxplot(outlier.colour="black", 
                        outlier.shape=6, outlier.size=2, 
                        notch=FALSE) +
            ggtitle(title) -> plot
    },
        "point"={ggplot(data, aes(!!x, !!y, color=!!z)) + 
            geom_point(size=6) +
            ggtitle(title) -> plot
    },
        "point2"={ggplot(data, aes(!!x, !!y, color=!!z)) +
            geom_point() +
            geom_smooth(method=lm, 
                        color="red", 
                        fill="#69b3a2", 
                        se=TRUE) +
            ggtitle(title) -> plot
    },
        "bar"={ggplot(data, aes(!!x, !!y, color=!!z)) + 
            geom_bar(stat="identity", width=.5, fill="tomato3") + 
            ggtitle(title) + 
            theme(axis.text.x = element_text(angle=65, vjust=0.4)) -> plot
    }
        
  )
  
  return(plot)
}