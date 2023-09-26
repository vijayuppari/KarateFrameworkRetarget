Feature: Embedded Expressions

  Scenario: Embedded Expressions in Json Payload
    * def json = {name: 'Vijay',Designation:  'QA'}
    * print json
    * def empname = "Harish"
    * def json1 = {name: '#(empname)',Designation:  "SE"}
    * print json1
    * def fname = "Venu"
    * def lname = "uppari"
    * def fullname = {fullname:  '#(fname + " " + lname)'}
    * print fullname
    * def fullname1 = {fullname:  '#("Hello" + fname + " " + lname)'}
    * print fullname1
    * def firstname = "Sameer"
    * def lastname = "Photo"
    * def jsonread = read("/Payloads/Employee.json")
    * print jsonread
    * def welcomeText = `Hello  ${firstname}`
    * print welcomeText

  Scenario: Embedded Expressions in Json Payload using Jsonpath
    * def json = {name: 'Vijay',Designation:  'QA'}
    #* print json
    * def emps = null
    * def json1 = {name: '#(json.name)',Designation:  '#(json.Designation)', emp: '#(emps)'} // it will print null value as it is if we want to ignore null values we can use ##
    * def json2 = {name: '#(json.name)',Designation:  '#(json.Designation)', emp: '##(emps)'}
    * print json2