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
	
  Scenario: Require First name specified
    Given I am on the new person page
    And I press "Create"
    Then I should see "First name can't be blank"

  Scenario: List people
    Given the following people:
      |first_name|last_name|
      |Jack|Welch|
      |Cameron|Diaz|
    When I am on the people page
	Then I should see the following people:
      |First name|Last name|
      |Jack|Welch|
	  |Cameron|Diaz|
	
  
  
  
  
  
  