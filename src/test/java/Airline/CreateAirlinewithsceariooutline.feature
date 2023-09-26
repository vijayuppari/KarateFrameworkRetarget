Feature: Data Driven testing Basics

  Scenario Outline: Data driven testing basics for <fn>
    * def fname = '<fn>'
    * def id = <id>
    * def isManager = <manager>
    * match fname == '#string'
    * match id == '#number'
    * match isManager == '#boolean'

    * print "Details are ", fname, id, isManager
    Examples:
      | fn | id| manager|
      |  vijay  | 100  | true|
      |  Harish  | 200  | false|

  Scenario Outline: Data driven testing basics for Json Payload
    * def JsonObject =
    """
    {
      "fname": '<fn>',
      "lastname": <id>,
      "ismanager": <manager>

    }
    """
    * print JsonObject
    * print fn
    * print id
    * print manager
    Examples:
      | fn | id| manager|
      |  Amitish  | 500  | true|
      |  Amod  | 600  | false|

  Scenario Outline: Data driven testing basics for Json Payload using Embded expression instead of <>
    * def Jsondoc =
    """
    {
      "fname": '#(fn)',
      "lastname": ##(id),
      "ismanager": ##(manager)

    }
    """
    * print Jsondoc
    * print fn
    * print id
    * print manager
    Examples:
      | fn | id| manager|
      |  Suresh  | | true|
      |  Paranesh  | 250  | |

  Scenario Outline: Data driven testing basics for Json Payload using external Json file <fn>
    * def Jsondoc =
    """
    {
      "fname": '<fn>',
      "id": <id>,
      "ismanager": <isManager>

    }
    """
    * print Jsondoc
    Examples:
     |read('/Payloads/MOCK_DATA.json')|
