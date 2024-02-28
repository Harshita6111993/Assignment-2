Feature: Get Booking Ids

Scenario: To retreive the ids of all the bookings that exist within the API

Given url 'https://restful-booker.herokuapp.com/booking'
When method GET
Then status 200
* print response

Scenario: Filter by first name
Given url 'https://restful-booker.herokuapp.com/booking?firstname=John'
When method GET
Then status 200
* print response

Scenario: Filter by checkin date
Given url 'https://restful-booker.herokuapp.com/booking?checkin=2014-03-13'
When method GET
Then status 200
* print response





