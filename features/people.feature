Feature: Manage people
  In order to [goal]
  [stakeholder]
  wants [behaviour]
  
  Scenario: Register new person
    Given I am on the new person page
    When I fill in "First name" with "Cameron"
    And I fill in "Last name" with "Diaz"
    And I press "Create"
    Then I should see "Cameron"
    And I should see "Diaz"
	And I should see "Person was successfully created."
	
  Scenario: Register new person
    Given I am on the new person page
    And I press "Create"
    Then I should see "First name can't be blank"
