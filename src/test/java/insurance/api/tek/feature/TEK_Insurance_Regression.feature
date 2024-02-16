Feature: TEK Insurance Regression Suite

  Background:
    Given url appUrl
    * def tokenGenerator = callonce read('generateToken.feature@GenerateToken')
    * def tokenValue = tokenGenerator.response.token
    * header Authorization = 'Bearer ' + tokenValue

    # Scenario: Post an account
  Scenario: Post an account - Primary Person
  * def generator = Java.type('insurance.api.tek.utility.DataGenerator')
  * def email = generator.getEmail()
  * def firstName = generator.getFirstName()
  * def lastName = generator.getLastName()
  * def title = generator.getTitle()
  * def employmentStatus = generator.getEmploymentStatus()
  * def dateOfBirth = generator.getDateOfBirth()
  * def maritalStatus = generator.getMaritalStatus()
  * def gender = generator.getGender()
  * path '/api/accounts/add-primary-account'
  * request
  """
  {
  "id": 0,
  "email": "#(email)",
  "firstName": "#(firstName)",
  "lastName": "#(lastName)",
  "title": "#(title)",
  "gender": "#(gender)",
  "maritalStatus": "#(maritalStatus)",
  "employmentStatus": "#(employmentStatus)",
  "dateOfBirth": "#(dateOfBirth)",
  "new": true
}
  """
  * method post
  * status 201
  * match response.email == email
  * print response
  * karate.write(response, 'RegressionCreatedAccount.json')
    # scenario: Post a car account
  Scenario: POst a car - Primary Person account
  * path '/api/accounts/add-account-car'
  * def primaryPersonIdValue = read('file:./target/RegressionCreatedAccount.json')
  * param primaryPersonId = primaryPersonIdValue.id
  * request
  """
  {
  "make": "BMS",
  "model": "XM",
  "year": "2024",
  "licensePlate": "Raptors2024"
}
  """
  * method post
  * status 201
  * print response
  * match response.licensePlate == 'Raptors2024
    # scenario: update the car
  Scenario: put ( update) a car - Primary Person Account
  * path '/api/accounts/update-account-car'
  * def extractCarId = callonce read('TEK_Insurance_Regression.feature@postCar')
  * def carIdValue = extractCarId.carId
  * def primaryPersnIdValue = read('file:./target/RegressionCreatedAccount.json')
  * param primaryPersonId = primaryPersonIdValue.id
  * request
  """
    {
 "id": #(carIdValue).
  "make": "BMW",
  "model": "XMM",
  "year": "202%",
  "licensePlate": "Raptors2044"
}
  """
  * method put
  * status 201


    # scenario: Delete the car
