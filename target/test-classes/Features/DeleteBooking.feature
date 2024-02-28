Feature: Delete a booking using delete api

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
	
	Scenario: Delete a booking with the given booking id

	Given path '/booking/626'
	And request requestPayload
	And header Authorization = 'Basic ec76984029e7c78'
	When method DELETE
	Then status 201

	



	
	
	
