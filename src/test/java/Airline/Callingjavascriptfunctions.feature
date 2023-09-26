Feature: Calling JavaScript Functions

  Scenario: Calling JS functions in feature file
   * def getName = function() {return "vijay"}
    * print getName()

    * def getName1 = function(name) {return name}
    * print getName1("Harish")

    * def getName2 =
    """
    function(name)
    {
    return "Hello " + name
    }
    """
    * print getName2("Mukesh")

   * def getName3 =
    """
    function SpecialName(name)
    {
    return "Hello " + name
    }
    """
   * print getName3("Naveen")

 Scenario: Calling JS functions in feature file from outside file
  * def jsutil = read("Utils/Jsutils.js")
     #* def value = jsutil()
  #* def value = jsutil("Marhis")
 * def value = jsutil().printName2("Ajay","Lingam")
  * print value