test_that("unknown objects are caught", {
  if (exists("xxx"))
    rm("xxx")
  filename <- tempfile()
  on.exit({unlink(filename)},add = TRUE)
  expect_error(reproducibleRchunks:::save_repro_data(c("xxx"),
                                                     filename = filename,
                                                     filetype = "json"))
})

test_that("unknown filetype is caught", {
  mydata <- 1:10
  filename <- tempfile()
  on.exit({unlink(filename)}, add = TRUE)
  expect_error(reproducibleRchunks::save_repro_data("mydata",
                                                    filename,
                                                    "funnyfiletype"))
})
