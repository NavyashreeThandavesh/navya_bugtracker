Given("I am on Bugtracker page") do
  @browser.navigate.to "https://bugtrackers.herokuapp.com/"
end

When("I click on login button") do
  sleep 3
  @browser.find_element(xpath: "//div/div[2]/ul/li[2]/form/div/input").click 
end

Then("I should see the login pop-up menu") do
  sleep 2
  @browser.find_element(xpath: ".//*[@id='popup_modal']/div[2]/div").displayed?
end

Given("I entered username and password") do
  sleep 2
  @browser.find_element(name:'username').send_keys "navyashree"
  sleep 3
  @browser.find_element(name:'password').send_keys "navya123!"
end

When("I click on submit button") do
  sleep 5
 @browser.find_element(name: 'commit').click 
end 

Then("I see the signed in successfully message") do
end

Given("I click on create button") do
  sleep 3
  @browser.find_element(xpath: ".//*[@id='create-button']/form/div/input").click 
end

When("I should see the create pop-up menu") do
  sleep 3
  @browser.find_element(xpath: ".//*[@id='popup_modal']/div[2]/div").displayed?
end

Then("I entered valid input's for all the fields") do
  sleep 2
  @browser.find_element(id:'Issues3').send_keys "dfd222"
  sleep 2
  @browser.find_element(id:'issue_issue_type').send_keys "Bugs"
  sleep 2
  @browser.find_element(id:'Description3').send_keys "I have issues in log in "
  sleep 2
  @browser.find_element(id:'Comment3').send_keys "Fail"
  sleep 2
  @browser.find_element(id:'issue_status').send_keys "Open"
  sleep 2
  @browser.find_element(name: 'commit').click 
end

Given("I need to check bug is created or not") do
  
end

When("I should see list in created") do
  sleep 3
  string = @browser.find_element(xpath: "//div[1]/div[1]/div/div/a/div[1]").text  
  puts "#{string}"
    if string.include? "Dfd222"
    puts "#{string}"
else
# raise.Exception.new "#{string1} Not found"
   end
end

Then("see in the list") do
  sleep 3
  @browser.find_element(id: "panel_show").displayed?
end

