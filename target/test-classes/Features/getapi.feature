Feature: GET API feature

Scenario: Get user details

Given url 'https://restful-booker.herokuapp.com/booking'
When method GET
Then status 200
* print response
* def jsonresponse = response
* print jsonresponse




