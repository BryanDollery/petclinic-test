Feature Add Owner
  As a employee
  I want to add new customers (owners)
  So that we can track their pets and visits

  Scenario: Successfully add an owner
    Given I am on the add-owner form
    And   I enter valid data
    When  I submit the form
    Then  The new owner will be displayed at the end of the owner's list

  Scenario: Unsuccessfully add an owner
    Given I am on the add-owner form
    And   I enter invalid data
    Then  The submit button is disabled

  Scenario: Do not provide a first name
    Given I am on the add-owner form
    And   I have entered all fields except first name
    Then  The submit button is disabled
    And   I see a message saying that the first name is required

  Scenario: Do not provide a last name
    Given I am on the add-owner form
    And   I have entered all fields except last name
    Then  The submit button is disabled
    And   I see a message saying that the last name is required

  Scenario: Do not provide a address
    Given I am on the add-owner form
    And   I have entered all fields except address
    Then  The submit button is disabled
    And   I see a message saying that the address is required

  Scenario: Do not provide a city
    Given I am on the add-owner form
    And   I have entered all fields except city
    Then  The submit button is disabled
    And   I see a message saying that the city is required

  Scenario: Do not provide a phone
    Given I am on the add-owner form
    And   I have entered all fields except phone
    Then  The submit button is disabled
    And   I see a message saying that the phone is required

  Scenario: Create owner with symbols and numbers in key fields
    Given I am on the add-owner form
    And   I enter symbols and numbers rather than words
    When  I submit the form
    Then  The new owner will be displayed at the end of the owner's list

  Scenario: Duplicate an owner
    Given I am on the add-owner form
    And   I enter duplicate owner's details
    When  I submit the form
    Then  The new owner will be displayed at the end of the owner's list




