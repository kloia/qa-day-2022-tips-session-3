Feature: Call Data
  Background:
    Given url baseUrl

    @data
    Scenario: Task 2
      * def data = Java.type('tests.helper.DataGenerator')
      * def myData = read('classpath:tests/data/myData.json')
      * set myData.id = data.idGenerator()
      * set myData.username = data.userName()
      * set myData.firstName = data.randomName()
      * set myData.lastName = data.randomName()
      * set myData.email = data.emailGenerator()
      * set myData.password = data.passwordGenerator()
      * set myData.phone = data.phoneGenerator()
      * set myData.userStatus = data.userStatus()
