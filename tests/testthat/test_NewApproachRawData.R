context('No argument constructor')

test_NewRawData <- function(){
  expect_error(NewRawData(), 'argument "x" is missing')
}
test_NewRawData()

test_NewRawDataDocument <- function(){
  rd <- NewRawData("ala")
  expect_equal(getDoc(rd,1), "ala")
}
test_NewRawDataDocument()

test_NewRawDataTwoDocuments <- function(){
  rd <- NewRawData(c("ala", "ela"))
  expect_equal(getDoc(rd,2), "ela")
}
test_NewRawDataTwoDocuments()

test_NewRawDataManyDocuments <- function(){
  rd <- NewRawData(paste(1:100, "a", sep = ""))
  expect_equal(getDoc(rd,15), "15a")
}
test_NewRawDataManyDocuments()

test_NewRawDataTextOOB <- function(){
  rd <- NewRawData(c("ala", "ela"))
  expect_error(getDoc(rd,3), 'index "i" out of bands')
}
test_NewRawDataTextOOB()

test_NewRawDataMetaDocument <- function(){
  rd <- NewRawData("asa")
  expect_equal(getMeta(rd,1,"language"), 'en')
}
test_NewRawDataMetaDocument()

test_NewRawDataMetaTwoDocuments <- function(){
  rd <- NewRawData(c("asa","asas"))
  expect_equal(getMeta(rd,2,"language"), 'en')
}
test_NewRawDataMetaTwoDocuments()

test_NewRawDataMetaManyDocuments <- function(){
  rd <- NewRawData(paste(1:100, "a", sep = ""))
  expect_equal(getMeta(rd,67,"language"), 'en')
}
test_NewRawDataMetaManyDocuments()

test_NewRawDataMetaOOB <- function(){
  rd <- NewRawData(c("ala", "ela"))
  expect_error(getMeta(rd,3, "language"), 'index "i" out of bands')
}
test_NewRawDataMetaOOB()

test_NewRawDataMetaNoMeta <- function(){
  rd <- NewRawData(c("ala", "ela"))
  expect_error(getMeta(rd,3, "author"), 'There is no metadata: "author"')
}
test_NewRawDataMetaNoMeta()
