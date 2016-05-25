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
  expect_equal(rd$content[[1]], "ala")
}
test_OneArticle()

context("Two articles")
test_TwoArticles <- function(){
  rd <- RawData(c("ala", "ela"))
  expect_equal(rd$content[[2]], "ela")
}
test_TwoArticles()

context("Many articles")
test_ManyArticles <- function(){
  rd <- RawData(paste(1:1000, "a", sep = " "))
  expect_equal(rd$content[[950]], "950 a")
}
test_ManyArticles()
