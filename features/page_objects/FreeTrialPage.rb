class FreeTrialPage
    include PageObject

    button(:start_free_trial, id: "continue")
    radio_button(:test_it_myself, id: "self")
    radio_button(:invite_my_team, id: "myteam")
    text_field(:my_name, id: "nameField")
    text_field(:email, id: "email")
    text_field(:password, id: "password")
end