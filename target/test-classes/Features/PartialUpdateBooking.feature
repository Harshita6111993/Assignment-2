Feature: Partial Update booking

Background: 
	* url 'https://restful-booker.herokuapp.com'
	* def requestPayload =
	"""
	{
   "firstname": "Marry",
   "lastname": "Sharma"
   }
	"""
	
	Scenario: To Update a current booking with a partial payload
	Given path '/booking/626'
	And request requestPayload
	And header Content-Type = 'application/json'
	And header Accept = 'application/json'
	And header Authorization = 'Basic ec76984029e7c78'
	When method PUT
	Then status 200
	

	
	
	
