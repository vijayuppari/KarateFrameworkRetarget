Feature: Create Nested complex Json creation

  Scenario: Create Payload using path and value keywords
    * set jsonObjectPayload
      | path | value         |
      | id   | 1100          |
      | name | "vijay kumar" |
    * print jsonObjectPayload

  Scenario: Create Nested JsonObject
    * set jsonObjectPayload
      | path                  | value         |
      | id                    | 1100          |
      | name                  | "vijay kumar" |
      | address.primary.city  | "BLR"         |
      | address.primary.state | "KA"          |
    * print jsonObjectPayload

  Scenario: Create Nested JsonObject in Json Array
    * set jsonObjectPayload
      | path                       | value         |
      | id                         | 1100          |
      | name                       | "vijay kumar" |
      | address[0].primary.city    | "BLR"         |
      | address[0].primary.state   | "KA"          |
      | address[1].secondary.city  | "HYD"         |
      | address[1].secondary.state | "TS"          |
    * print jsonObjectPayload

  Scenario: Create Nested JsonObject in Json Array using variables
    * def idValue = 200
    * def name = "HarishKumar"
    * set jsonObjectPayload
      | path                       | value   |
      | id                         | idValue |
      | name                       | name    |
      | address[0].primary.city    | "BLR"   |
      | address[0].primary.state   | "KA"    |
      | address[1].secondary.city  | "HYD"   |
      | address[1].secondary.state | "TS"    |
    * print jsonObjectPayload

  Scenario: Create simple Object in JsonArray
    * set jsonObjectPayload
      | path | 0      | 1   |
      | id   | 300    | 600 |
      | name | "Amod" | 250 |
    * print jsonObjectPayload

  Scenario: Use existing JsonObject
    * def existingjsonobject = {name: "Vijay"}
    * set existingjsonobject
      | path | value     |
      | id   | 300    |
      | name | "Amod Airlines" |
    * print existingjsonobject

  Scenario: Use existing JsonObject- Set with Jsonpath
    * def existingjsonobject = {name: "Vijay"}
    * set existingjsonobject.details
      | path | value     |
      | id   | 300    |
      | name | "Amod Airlines" |
    * print existingjsonobject

