Feature: Fuzzy Matchers

  # Fuzzy Matchers used in the response values are present or not and which type it was
  Scenario: Fuzzy Matchers using with different examples
    * def jsondoc =
    """
    {
        "id": 123,
        "name": "Vijay"
        }
    """
    #* print jsondoc
  * match jsondoc.id == '#number'

  Scenario: Fuzzy Matchers using with different examples - 2
    * def jsondoc =
    """
    {
        "id": 123,
        "name": "Vijay"
        }
    """
    * match jsondoc ==
    """
     {
        "id": '#present',
        "name": '#ignore'
        }
    """

  Scenario: Fuzzy Matchers using with different examples - 3
    * def jsondoc =
    """
    {
        "id": 123,
        "name": "Vijay",
        "skills": [
        "java",
        "testing"
        ]
        }
    """
    * match jsondoc.skills == '#array'
