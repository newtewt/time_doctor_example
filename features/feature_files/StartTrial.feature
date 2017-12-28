Feature: Entering user information will lets a user download the application

    #Not sure how the email check is handeling so cannot run this more than once.
    @start_trial
    Scenario: Entering in valid information will allow user to download app
    Given I navigate to the free trial page
    When I test it myself
    Then the contact information fields are available
     