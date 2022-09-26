Feature: Post user on reqres

  Scenario: Get a user
    Given url "https://reqres.in" + "/api/users"
    And request { "name": "Carlos", "job": "Pragma" }
    When method post
    Then status 201