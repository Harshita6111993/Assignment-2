Feature: Update booking

Background: 
	* url 'https://restful-booker.herokuapp.com'
	* def requestPayload =
	"""
	{
   "firstname": "Harshita",
   "lastname": "Smith",
   "totalprice": 215,
   "depositpaid": true,
   "bookingdates": {
     "checkin": "2021-02-15",
     "checkout": "2021-06-17"
                    }
   }
	"""
	
	Scenario: To update a current booking
	Given path '/booking/626'
	And request requestPayload
	And header Content-Type = 'application/json'
	And header Accept = 'application/json'
	And header Authorization = 'Basic ec76984029e7c78'
	When method PUT
	Then status 200
	

	
	
	
