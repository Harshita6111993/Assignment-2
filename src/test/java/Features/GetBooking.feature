Feature: Get Booking

Scenario: To retrieve a specific booking based upon the booking id provided

Given url 'https://restful-booker.herokuapp.com/booking/1497'
And header Accept = '*/*'
When method GET
Then status 200
* print response
