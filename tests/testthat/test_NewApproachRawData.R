context('No argument constructor')

test_NewRawData <- function(){
  expect_message(NewRawData(), 'Error: argument "source" is missing')
}
test_NewRawData()
