Feature: Search on google maps
  In order to find where I am going
  As a user on google maps
  I want to make sure the correct location and information is shown

  Scenario: Find where I am going
    Given I am on "https://google.com/maps"
    When I search for "brandwatch brighton"
    Then I should see "Brandwatch"
    
  Scenario: Find my office
    Given I am on "google.com/maps"
    When I search for "SCL Preston Road"
    Then I should see "SCL"
     And the address contains "Park Gate"

  Scenario: Find an eatery
    Given I am on "www.google.com/maps"
    When I type "White Rabit Brighton" 
     And press the "Enter" key
    Then I should see "White rabbit"
     And their opening times.
   
