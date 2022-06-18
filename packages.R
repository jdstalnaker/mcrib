
options(warn=-1)

if(!require(RODBC)){ #Used to connect with ODBC
  install.packages("RODBC")
  library(RODBC)
}

if(!require(readxl)){
  install.packages("readxl")
  library(readxl)
}

if(!require(dplyr)){
  install.packages("dplyr")
  library(dplyr)
}


if(!require(data.table)){
  install.packages("data.table")
  library(data.table)
}

if(!require(reshape2)){
  install.packages("reshape2")
  library(reshape2)
}

if(!require(tidyr)){
  install.packages("tidyr")
  library(tidyr)
}

if(!require(parallel)){
  install.packages("parallel")
  library(parallel)
}

if(!require(foreach)){
  install.packages("foreach")
  library(foreach)
}

if(!require(doParallel)){
  install.packages("doParallel")
  library(doParallel)
}

if(!require(gtools)){
  install.packages("gtools")
  library(gtools)
}

#if(!require(xlsx)){
#install.packages("xlsx")
#library(xlsx)
#}

if(!require(writexl)){
  install.packages("writexl")
  library(writexl)
}

if(!require(Rcpp)){
  install.packages("Rcpp")
  library(Rcpp)
}

if(!require(ggplot2)){
  install.packages("Rcpp")
  library(ggplot2)
}

