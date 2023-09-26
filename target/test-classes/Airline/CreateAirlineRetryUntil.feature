Feature:Retry Until Example

  # By default without any configuration retry is : 3 and interval is 3000 ms
  # We can able to pass retry in scenario level and karate.config level as well
  Scenario: Showing Retry logic with example
    Given url 'https://api.instantwebtools.net/v1/airlines'
    When request {"id":1249872,"name":"Sri Lankan Airways","country":"Sri Lanka","logo":"https:\/\/upload.wikimedia.org\/wikipedia\/en\/thumb\/9\/9b\/Qatar_Airways_Logo.svg\/sri_lanka.png","slogan":"From Sri Lanka","head_quaters":"Katunayake, Sri Lanka","website":"www.srilankaairways.com","established":"1990"}
    And retry until responseStatus == 200
    And method post
    Then status 200

  Scenario: Showing Retry logic with example - scenario level retry
    * configure retry = { count: 4, interval: 2000 }
    Given url 'https://api.instantwebtools.net/v1/airlines'
    When request {"id":1249872,"name":"Sri Lankan Airways","country":"Sri Lanka","logo":"https:\/\/upload.wikimedia.org\/wikipedia\/en\/thumb\/9\/9b\/Qatar_Airways_Logo.svg\/sri_lanka.png","slogan":"From Sri Lanka","head_quaters":"Katunayake, Sri Lanka","website":"www.srilankaairways.com","established":"1990"}
    And retry until responseStatus == 200
    And method post
    Then status 200
