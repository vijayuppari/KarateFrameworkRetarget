Feature: Get Airline Details

#  Scenario: Get Airline Details by ID smoke test
#    Given url 'https://api.instantwebtools.net/v1/airlines/2'
#    When method get
#    Then status 200

  Scenario: Get Airline Details by ID
    Given url 'https://api.instantwebtools.net'
    And path 'v1/airlines'
    And path '1'
    When method get
    Then status 200
    And match responseStatus ==200
    And assert responseStatus ==200
    And match response == {"id":1,"name":"Sri Lankan Airways","country":"Sri Lanka","logo":"https://upload.wikimedia.org/wikipedia/en/thumb/9/9b/Qatar_Airways_Logo.svg/sri_lanka.png","slogan":"From Sri Lanka","head_quaters":"Katunayake, Sri Lanka","website":"www.srilankaairways.com","established":"1990"}
    And print "Response as showing as " + response
    And print "Response status code as " + responseStatus
    And match response.name == 'Sri Lankan Airways'
    And print responseHeaders
    And print "Content Type as " + responseHeaders['Content-Type'][0]
    And match header Content-Type == "application/json; charset=utf-8"
    And match header Content-Type contains "application/json"


