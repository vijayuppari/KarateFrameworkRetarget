Feature: Call OnceExample

  Background:
    * def accesstoken = callonce read("Callable.feature")

  # Its used like, call once and reuse in as many as scenarios we want
  Scenario: Call Once Example Usage
    * def user = "Vijay"
    * def pass = "Some"
    * print "Details are " , user + pass
    * print accesstoken.response.token

  Scenario: Call Once Example Usage - 1
    * def user = "Naresh"
    * def pass = "Very Special"
    * print "Details are " , user + pass
    * print accesstoken.response.token

  Scenario: Call Once Example Usage -2
    * def user = "Mukesh"
    * def pass = "Something Special"
    * print "Details are " , user + pass
    * print accesstoken.response.token