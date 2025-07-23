## ----setup, include = FALSE---------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

library(reproducibleRchunks)

## -----------------------------------------------------------------------------
options(reproducibleRchunks.templates = list(
html="<div style='border: 1px dashed gray;
padding: 15px 15px 5px 15px;
background-color: #F7F7F7;'>
<small><b>Reproducibility Checks</b><br>

${content}</small></div><br><br>"))

## ----echo=TRUE, eval=TRUE-----------------------------------------------------
num_errors <- reproducibleRchunks::get_num_reproducibility_errors()
 ifelse(num_errors > 0,"There were some results that did not reproduce!","The entire document reproduced succesfully")

## -----------------------------------------------------------------------------
repro_table <- reproducibleRchunks::get_reproducibility_summary()
knitr::kable(repro_table)

## ----fig.width=6, fig.height=3------------------------------------------------
if (nrow(repro_table) > 0) {
  prop_success <- aggregate(Success ~ Chunk, data = repro_table, FUN = mean)
  
  barplot(prop_success$Success,
          names.arg = prop_success$Chunk,
          ylim = c(0, 1),
          ylab = "Relative Proportion",
          xlab = "Chunk",
          main = "Proportion of Successful Reproductions per Chunk")
} else {
  print("No reproducibility information available yet.")
}

