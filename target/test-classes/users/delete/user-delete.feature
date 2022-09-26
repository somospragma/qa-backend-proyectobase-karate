Feature: Delete user on reqres

  Scenario: Delete a user
    Given url "https://reqres.in" + "/api/users/" + "2"
    When method delete
    Then status 204

    #Escenario que ejecuta otro escenario de otra Feature
  Scenario: Delete a user create
    * call read("../post/user-post-snippets.feature@Create")
    Given url "https://reqres.in" + "/api/users/" + contactId
    When method delete
    Then status 204