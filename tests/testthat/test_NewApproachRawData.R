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
  expect_equal(getMeta(rd,1,language), 'en')
}
test_NewRawDataMetaDocument()
