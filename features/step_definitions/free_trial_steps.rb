Given(/^I navigate to the free trial page$/) do 
    step 'I am on the homepage'
    #Answering yes to all questions
    
    on QuestionsPage do |questions_page|
        questions_page.answer_questions 'yes'
    end
    on FreeTrialPage do |free_trial_page|
        free_trial_page.invite_my_team_element.when_present
    end 
end

When(/^I test it myself$/) do 
    on FreeTrialPage do |free_trial_page|
        free_trial_page.select_test_it_myself
        free_trial_page.start_free_trial
    end 
end

Then(/^the contact information fields are available$/) do
    on FreeTrialPage do |free_trial_page|
        expect(free_trial_page.my_name_element.visible?).to be true
        expect(free_trial_page.email_element.visible?).to be true
        expect(free_trial_page.password_element.visible?).to be true
    end 
end