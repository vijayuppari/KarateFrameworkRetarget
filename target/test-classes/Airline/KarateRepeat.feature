Feature: Karate Repeat Usage

  Scenario: Repeat Same call required number of times
    * def datagen = function() { return "Karate"}
   * def val = karate.repeat(5, datagen);
    * print val

  Scenario: Call Feature file in JS function
    * def datagen = function() { return karate.call('Calling.feature')}
    * def val = karate.repeat(5, datagen);
    * print val