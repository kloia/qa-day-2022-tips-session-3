Feature: Api Tasks

    Background: Url Given
        Given url baseUrl

    Scenario Outline: Task 1
        Given path "pet/findByStatus"
        Then param status = <parameters>
        When method GET
        Then status 200
        Then match header Content-Type == "application/json"
        Then match each response contains {'id': '#present'}
        Then match each response contains {'status': <parameters>}
        And match each response contains {'id': "#notnull"}
        Examples:
            | parameters |
            | "pending" |
            | "available" |

    Scenario: Task 3
        * def result = call read('classpath:tests/caller/caller.feature@data')
        When header content-type = "application/json"
        And path "user"
        And request result["myData"]
        Then method POST
        Then status 200
        And match response["message"] == result["myData"]["id"]
    @task4
    Scenario: Task 4 Callable
        * def result = call read('classpath:tests/caller/caller.feature@data')
        * set result.myData.username = __arg.username
        * set result.myData.lastName = __arg.lastName
        When header content-type = "application/json"
        And path "user"
        And request result["myData"]
        Then method POST
        Then status 200
        And match response["message"] == result["myData"]["id"]

    Scenario: Task 4 Caller
        * def result = call read('classpath:tests/features/test.feature@task4') {"username": "Cemal", "lastName": "Okka"}
