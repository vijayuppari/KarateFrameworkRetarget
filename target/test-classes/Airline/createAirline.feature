Feature: Create Airline

  Scenario: Create Airline with hardcoded Json Payload
    Given url 'https://api.instantwebtools.net/v1/airlines'
    When request {"id":1249872,"name":"Sri Lankan Airways","country":"Sri Lanka","logo":"https:\/\/upload.wikimedia.org\/wikipedia\/en\/thumb\/9\/9b\/Qatar_Airways_Logo.svg\/sri_lanka.png","slogan":"From Sri Lanka","head_quaters":"Katunayake, Sri Lanka","website":"www.srilankaairways.com","established":"1990"}
    And method post
    Then status 200

  Scenario: Create Airline with multiline Json Payload
    Given url 'https://api.instantwebtools.net/v1/airlines'
    When request
    """
    {
    "id": 67789126,
    "name": "Sri Lankan Airways",
    "country": "Sri Lanka",
    "logo": "https://upload.wikimedia.org/wikipedia/en/thumb/9/9b/Qatar_Airways_Logo.svg/sri_lanka.png",
    "slogan": "From Sri Lanka",
    "head_quaters": "Katunayake, Sri Lanka",
    "website": "www.srilankaairways.com",
    "established": "1990"
}
    """
    And method post
    Then status 200

  Scenario: Create Airline with Creating Json Payload
    Given url 'https://api.instantwebtools.net/v1/airlines'
    * def requestPayload = {}
    * requestPayload.id= 67789128
    * requestPayload.name= "Sri Lankan Airways"
    * requestPayload.country= "Sri Lanka"
    * requestPayload.logo= "https://upload.wikimedia.org/wikipedia/en/thumb/9/9b/Qatar_Airways_Logo.svg/sri_lanka.png"
    * requestPayload.slogan= "From Sri Lanka"
    * requestPayload.head_quaters = "Katunayake, Sri Lanka"
    * requestPayload.website = "www.srilankaairways.com"
    * requestPayload.established = 1990
    And print requestPayload
    When request requestPayload
    And method post
    Then status 200

  Scenario: Create Airline with Creating Json Payload with additional fields into the payload
    Given url 'https://api.instantwebtools.net/v1/airlines'
    * def requestPayload = {}
    * requestPayload.id= 67789128
    * requestPayload.name= "Sri Lankan Airways"
    * requestPayload.country= "Sri Lanka"
    * requestPayload.logo= "https://upload.wikimedia.org/wikipedia/en/thumb/9/9b/Qatar_Airways_Logo.svg/sri_lanka.png"
    * requestPayload.slogan= "From Sri Lanka"
    * requestPayload.head_quaters = "Katunayake, Sri Lanka"
    * requestPayload.website = "www.srilankaairways.com"
    * requestPayload.established = 1990
    * requestPayload.address = []
    * requestPayload.address[0] = {}
    * requestPayload.address[0].City = "Bangalore"
    * requestPayload.address[0].State = "KA"
    * requestPayload.address[1] = {}
    * requestPayload.address[1].City = "Hyderabad"
    * requestPayload.address[1].State = "Telangana"

    And print requestPayload
    When request requestPayload
    And method post
    Then status 200

  Scenario: Create Airline Read Json from external files
    Given url 'https://api.instantwebtools.net/v1/airlines'
    * def requestPayload = read ('Payloads/CreateAirlinePayload.json')
    * set requestPayload.id = 97931891
    * print requestPayload
    When request requestPayload
    And method post
    Then status 200

  Scenario: Create Airline Read Json from external files and set the field value and remove
    Given url 'https://api.instantwebtools.net/v1/airlines'
    * def requestPayload = read ('Payloads/CreateAirlinePayload.json')
    * set requestPayload.id = 97931891 # We can set the value during run time and base json file wont change
    * print requestPayload
    When request requestPayload
    And method post
    Then status 200
    * remove requestPayload.id
    * print requestPayload
    When request requestPayload
    And method post
    Then status 200

  Scenario: Create Airline Read Json from external files and set user field and value to Json
    Given url 'https://api.instantwebtools.net/v1/airlines'
    * def requestPayload = read ('Payloads/CreateAirlinePayload.json')
    * set requestPayload.CEO = 'vijay'
    * set requestPayload.foo =
    """
    {
      "foo1": {
        "foo2": "boo2"
      }
    }
    """
    * set requestPayload.foo.foo1.foo2 = 'boo1'
    * print requestPayload

  Scenario: Read data from Karate Configfile
    Given url createAirlineurl
    * print 'url is ' , createAirlineurl
    * print 'Varname is ' + myVarName
    When request {"id":1249884,"name":"Sri Lankan Airways","country":"Sri Lanka","logo":"https:\/\/upload.wikimedia.org\/wikipedia\/en\/thumb\/9\/9b\/Qatar_Airways_Logo.svg\/sri_lanka.png","slogan":"From Sri Lanka","head_quaters":"Katunayake, Sri Lanka","website":"www.srilankaairways.com","established":"1990"}
    And method post
    Then status 200

