Feature: Answering leading questions will determine which page a user is directed to

    Scenario: Answering yes to all questions will navigate to free demo page
    Given I am on the homepage
    When I answer yes to all questions
    Then I am on the free trial page


    Scenario: Answering no to all questions will navigate to browse site page
    Given I am on the homepage
    When I answer no to all questions
    Then I am on the browse site page

    