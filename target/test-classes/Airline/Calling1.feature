Feature: Call other feature file in this feature

  Scenario: Calling Feature -1
    * def user = "Nani"
    * def pass = "Very Special"
      * def response = call read('Callable1.feature')
     * print response



