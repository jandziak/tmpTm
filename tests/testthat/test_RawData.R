context('Length 0')

test_RawData <- function(){
  rd <- RawData()
  expect_equal(length(rd),0)
}
test_RawData()


context('Class RawData')

test_ClassRawData <- function(){
  rd <- RawData()
  expect_equal(class(rd), 'RawData')
}
test_ClassRawData()

context("One article")
test_OneArticle <-function(){
  rd <- RawData("ala")
  expect_equal(rd[[1]], "ala")
}
test_OneArticle()
