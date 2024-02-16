@Regression
Feature: Generate Access Token for TEK Insurance Application

  #url we pass base url
  #path we pass the endpoint of a service
  #request we pass json body POST and PUT method
  #method we pass HTTPS/HTTPS method Type (GET, POST, PUT, DELETE)
  #status validate the response status code expected Response code
  #print used for printing the response or variable into console
  #response this keyword print API Response.

  Background:
    Given url appUrl

  @GenerateToken
  Scenario: Generate Token
    * path '/api/token'
    * request {"username":"supervisor","password":"tek_supervisor"}
    * method post
    * status 200
    * print response
    * def tokenValue = response.token
    * print tokenValue


    Scenario:  Verify Token
      * path '/api/token/verify'
      * def tokenGenerator = call read('generateToken.feature@GenerateToken')
      * def userValue = tokenGenerator.response.username
      * def getTokenValue = tokenGenerator.response.token
      * param username =  userValue
      * param token = getTokenValue
      * method get
      * status 200
      * print response