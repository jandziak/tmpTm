context('Length 0')

test_RawData <- function(){
  rd <- RawData()
  expect_equal(length(rd),0)
}
test_RawData()


context('Class RawData')

test_ClassRawData <- function(){
  rd <- RawData("ala")
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

context("Get atributes null")
test_GetAtributesNULL <- function(){
  rd <- RawData(NULL)
  expect_equal(rd$meta$author, NULL)
}
test_GetAtributesNULL()

context("Get atributes one")
test_GetAtributesOneArticle <- function(){
  rd <- RawData("ala")
  expect_equal(rd$meta$author[[1]], character(0))
}
test_GetAtributesOneArticle()

context("Get atributes two")
test_GetAtributesTwoArticles <- function(){
  rd <- RawData(c("ala", "la"))
  expect_equal(rd$meta$author[[2]], character(0))
}
test_GetAtributesTwoArticles()

context("Many articles author")
test_GetAtributesManyArticles <- function(){
  rd <- RawData(paste(1:1000, "a", sep = " "))
  expect_equal(rd$meta$author[[950]], character(0))
}
test_GetAtributesManyArticles()

#Czas na stworzenie nowej klasy <-  artykul + czas na stworzenie nowej klasy magazyn
