Feature: Create Dynamic data using JavaFaker

  Scenario: Create dynamic data in Payload
    * def datafaker = Java.type("net.datafaker.Faker")
    * def datafakerObject =  new datafaker()
    * def idvalue  = datafakerObject.number().digits(5)
    * def name  = datafakerObject.name().fullName()
    * set jsonObjectPayload
      | path | value   |
      | id   | idvalue |
      | name | name    |
    * print jsonObjectPayload

  Scenario: Create dynamic data in Payload - with Custom Class
    * def datafaker = Java.type("Utils.RandomGenerator")
    * def idvalue  = datafaker.getRandomdigit(5)
    * def name  = datafaker.getFullName()
    * set jsonObjectPayload
      | path | value   |
      | id   | idvalue |
      | name | name    |
    * print jsonObjectPayload