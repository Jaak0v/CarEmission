#' Stworzenie wykresu
#'
#'
#' @return plot
#' @param x double
#' @param y double
#' @param out double
#' @export
#'
#' @examples

Emsplot <- function(type,out,x,y,z,title) {
  
  x <- enquo(x)
  y <- enquo(y)
  z <- enquo(z)
  
  cbp1 <- c("#999999", "#E69F00", "#56B4E9", "#009E73",
            "#F0E442", "#0072B2", "#D55E00", "#CC79A7")
  switch(type,
        "1"={ggplot(out, aes(!!x, !!y, color=!!z)) + 
           geom_boxplot(outlier.colour="black", outlier.shape=6,
                        outlier.size=2, notch=FALSE) +
            ggtitle(title) -> plot
    },
        "2"={ggplot(out, aes(!!x, !!y, color=!!z)) + 
            geom_point(size=6) +
            ggtitle(title) -> plot
    },
        "3"={ggplot(out, aes(!!x, !!y, color=!!z)) +
            geom_point() +
            geom_smooth(method=lm, 
                        color="red", 
                        fill="#69b3a2", 
                        se=TRUE) +
            ggtitle(title) -> plot
    },
        "4"={ggplot(out, aes(!!x, !!y, color=!!z)) + 
            geom_bar(stat="identity", width=.5, fill="tomato3") + 
            ggtitle(title) + 
            theme(axis.text.x = element_text(angle=65, vjust=0.4)) -> plot
    }
        
  )
  
  return(plot)
}