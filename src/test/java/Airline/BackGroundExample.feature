Feature: BackGround Example

  Background:
    Given url "I am doing good "

  # Its nothing but BackGround in Cucumber, we will write common steps in BackGround
  Scenario: Call Once Example Usage
    * def user = "Vijay"
    * def pass = "Some"
    * print "Details are " , user + pass

  Scenario: Call Once Example Usage - 1
    * def user = "Naresh"
    * def pass = "Very Special"
    * print "Details are " , user + pass

  Scenario: Call Once Example Usage -2
    * def user = "Mukesh"
    * def pass = "Something Special"
    * print "Details are " , user + pass