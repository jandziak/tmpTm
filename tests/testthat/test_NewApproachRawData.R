context('No argument constructor')

test_NewRawData <- function(){
  try(NewRawData())
  expect_error(NewRawData(), 'argument "x" is missing')
}
test_NewRawData()

test_NewRawDataDocument <- function(){
  rd <- NewRawData("ala")
  expect_equal(getDoc(rd,1), "ala")
}
test_NewRawDataDocument()
