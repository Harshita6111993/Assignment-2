Feature: Create booking

Background: 
	* url 'https://restful-booker.herokuapp.com'
	* def requestPayload =
	"""
	{
	  "firstname" : "Varshit",
    "lastname" : "Jain",
    "totalprice" : 111,
    "depositpaid" : true,
    "bookingdates" : {
        "checkin" : "2018-01-01",
        "checkout" : "2019-01-01"
    },
    "additionalneeds" : "Breakfast"
	}
	"""
	
	Scenario: To Create a new booking in the API
	Given path '/booking'
	And request requestPayload
	And header Content-Type = 'application/json'
	And header Accept = 'application/json'
	When method POST
	Then status 200
	
	
	
