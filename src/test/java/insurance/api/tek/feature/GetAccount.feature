@Regression
Feature: TEK Insurance GET Account API

  Background:
    Given url 'https://qa.insurance-api.tekschool-students.com'
    * def tokenGenerator = call read('generateToken.feature@GenerateToken')
    * def tokenValue = tokenGenerator.response.token
    * header Authorization = 'Bearer ' + tokenValue

    Scenario: Get Primary Person Account
      * path '/api/accounts/get-primary-account'
      * param primaryPersonId = 2498
      * method get
      * status 200
      * print response
      * match response.firstName == 'Jawid'
      * match response.lastName == 'Jawid'
      * match response.gender == 'MALE'
      * match response.id == 2498
      * match response.employmentStatus == 'Engineer'
      * match response.email == 'jawid90@gmail.com'
      * match response.email contains '@gmail.com'
      * match response.maritalStatus == 'MARRIED'

  Scenario: Get ALL Accounts
    * path '/api/accounts/get-all-accounts'
    * method get
    * status 200
    * print response[0].firstName == 'Shokriyan'

    Scenario: Get Account Detail
      * path '/api/accounts/get-account'
      * param primaryPersonId = 2498
      * method get
      * status 200
      * print response
      * def idValue = response.primaryPerson.id
      * match idValue == 2498
      * match response.primaryPersonCars[0].licensePlate == 'TEK0012'
      * match response.user.accountType == 'CUSTOMER'
      * match response.user.authorities[0].role == 'CUSTOMER'

