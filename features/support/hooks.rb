Before do
    #Setup selenium browser to run in firefox
    @browser = Selenium::WebDriver.for :firefox
end

After do
    #Close browser after test scenario completes
    @browser.close
end