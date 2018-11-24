gen_markers <- function(dat){
  n = nrow(dat)
  first <- paste("color:",dat$color[1], "%7Clabel:", dat$label[1], "%7C", dat$latitude[1], ",", dat$longitude[1], sep="")
  str <- first
  for(i in seq(2,n)){
    new_str <- paste("&markers=", "color:",dat$color[i], "%7Clabel:", dat$label[i], "%7C", dat$latitude[i], ",", dat$longitude[i], sep="")
    str <- paste(str, new_str, sep="")
  }
  return(str)
}