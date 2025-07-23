---
title: "Test JSON data storage using `testthat`"
output: html_document
date: "2024-05-31"
---



## Reproducible Computations

The following computations will be automatically tested for reproducibility with every build of this document.


``` r
xyz <- 1:10
abc <- "hello world"
some_obj <- t.test(xyz)
some_obj
```

```
## 
## 	One Sample t-test
## 
## data:  xyz
## t = 5.7446, df = 9, p-value = 0.0002782
## alternative hypothesis: true mean is not equal to 0
## 95 percent confidence interval:
##  3.334149 7.665851
## sample estimates:
## mean of x 
##       5.5
```
<div style='border: 3px solid black; padding: 10px 10px 10px 10px; background-color: #EEEEEE;'><h5>Code Chunk Reproduction Report</h5>- ✅abc: REPRODUCTION SUCCESSFUL


- ✅some_obj: REPRODUCTION SUCCESSFUL


- ✅xyz: REPRODUCTION SUCCESSFUL

</div>


# regular R


``` r
xyz <- 1:10
abc <- "hello world"
some_obj <- t.test(xyz)
some_obj
```

```
## 
## 	One Sample t-test
## 
## data:  xyz
## t = 5.7446, df = 9, p-value = 0.0002782
## alternative hypothesis: true mean is not equal to 0
## 95 percent confidence interval:
##  3.334149 7.665851
## sample estimates:
## mean of x 
##       5.5
```
