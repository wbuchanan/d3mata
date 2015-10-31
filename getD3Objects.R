library(magrittr)
x <- xml2::read_html("https://github.com/mbostock/d3/wiki/API-Reference") 
x <- rvest::html_text(rvest::html_nodes(x, "a")[c(122:849)]) %>% dplyr::data_frame()
names(x) <- "x"
y <- dplyr::filter(x, x != "" & grepl("(^[A-Z].*)|(.*\\(.*\\).*)", x$x) != TRUE) 
z <- plyr::ldply(as.list(y$x), .fun = function(b) {
	v <- unlist(stringr::str_split(b, "\\."))
	if (length(v) == 2) {
		v <- c(v, "", "")
	} else if (length(v) == 1) {
		v <- c(v, "", "", "")
	} else if (length(v) == 3) {
		v <- c(v, "")
	}
	return(v)
})

names(z) <- c("class", "subclass", "method", "method")
write.csv(z, file = "~/Desktop/d3Data.csv", row.names = FALSE)
