Feature: Usage Of Ternary Operator

  Scenario: Usage Of Ternary Operator
      * def status = 200
    * def header = 'Json'
    * print status == 200 && header == 'Json'? 'success' : 'Faliure'

  Scenario: Usage Of Ternary Operator -1
    * def status = 200
    * print status == 201 ? karate.call('Calling.feature') : 'Faliure'