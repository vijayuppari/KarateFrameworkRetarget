Feature: Json Path Examples

  Scenario: Json Path Examples with different inputs

    #Prefrence is use karate.jsonPath to get accureate results
    * def JsonObject =
    """
    {
  "store": {
    "book": [
      {
        "category": "reference",
        "author": "Nigel Rees",
        "title": "Sayings of the Century",
        "price": 8.95
      },
      {
        "category": "fiction",
        "author": "Evelyn Waugh",
        "title": "Sword of Honour",
        "price": 12.99
      },
      {
        "category": "fiction",
        "author": "Herman Melville",
        "title": "Moby Dick",
        "isbn": "0-553-21311-3",
        "price": 8.99
      },
      {
        "category": "fiction",
        "author": "J. R. R. Tolkien",
        "title": "The Lord of the Rings",
        "isbn": "0-395-19395-8",
        "price": 22.99
      }
    ],
    "bicycle": {
      "color": "red",
      "price": 19.95
    }
  },
  "expensive": 10
}
    """
    * print JsonObject.expensive
    * print karate.get('$JsonObject.expensive')
    * print JsonObject.store.book[0]
    * print JsonObject.store.book[1].category
    * print karate.get('$JsonObject.store.book[*].category')
    * print karate.get('$JsonObject.store.book[1,2].category')
    * print karate.jsonPath(JsonObject,'$.store.book[0,1].category')
    * print karate.jsonPath(JsonObject,"$.store.book[?(@.author == 'Nigel Rees')].category")
    * print karate.jsonPath(JsonObject,"$.store.book[?(@.author == 'Nigel Rees')].title")
    * print karate.jsonPath(JsonObject,"$.store.book.length()")
    * print karate.jsonPath(JsonObject, '$.store.book[*].price')
    * print karate.jsonPath(JsonObject, '$..price.sum()')
    * print karate.jsonPath(JsonObject, '$..price.min()')
    * print karate.jsonPath(JsonObject, '$..price.max()')

    # Refer below website to get more details > https://github.com/json-path/JsonPath


