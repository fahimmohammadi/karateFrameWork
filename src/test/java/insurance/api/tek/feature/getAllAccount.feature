Feature: Get All Account

  Background:
    Given url 'https://qa.insurance-api.tekschool-students.com'
    #[7:49 PM] Faridullah Abid
#Send request to /api/accounts/get-all-accounts
#With Authentication
#Expected status code 200
@GeneratorToken
  Scenario: Generate Token
    * path '/api/token'
    * request {"username":"supervisor", "password":"tek_supervisor"}
    * method post
    * status 200
    * print response
    * def tokenValue = response.token
    * print tokenValue

  Scenario: Get All Account
      * def tokenGenerator = call read('getAllAccount.feature@GenerateToken')
      * def tokenValue = tokenGenerator.response.token
      * header Authorization = 'Bearer ' + tokenValue
      * path '/api/accounts/get-all-accounts'
      * method get
      * status 200
      * print response