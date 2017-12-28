Given(/^I am on the homepage$/) do
    #Navigate to time doctore home page.
    @browser.navigate.to "https://www.timedoctor.com/"
    on QuestionsPage do |page|
        page.question1_element.when_present
    end
end

When(/^I answer (yes|no) to all questions$/) do |answer|
    on QuestionsPage do |page|
        page.answer_question answer
    end
end

Then(/^I am on the free trial page$/) do
    on FreeTrialPage do |page|
        expect(page.start_free_trial_element.visible?).to be true  
        expect(page.test_it_myself_element.visible?).to be true  
    end
end

Then(/^I am on the browse site page$/) do
    on BrowseTheSitePage do |page|
        expect(page.browse_the_site_element.visible?).to be true  
    end
end