#######################
###load data
#######################
rm(list=ls())
options(max.print=999999)
library(pacman)
p_load("exams")
p_load("tidyverse")

ori_dir<-getwd()



exams2html("32_est_summary.Rmd",
           converter = "pandoc-mathjax")

exams2moodle("32_est_summary.Rmd", n = 20, name = "test_tema_3",
             encoding = "UTF-8")
