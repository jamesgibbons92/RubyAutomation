Feature:
  In order to...
  As a ....
  I want ...

  Scenario: Find where I am going
    Given I am on "https://google.com/maps"
    When I search for "brandwatch"
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
   
