Given("I am on BugTracker page") do
  @browser.navigate.to "https://bugtrackers.herokuapp.com/"
end

When("I entered username and password") do
   sleep 3
   @browser.find_element(xpath: "//div/div[2]/ul/li[2]/form/div/input").click 
   sleep 2
   @browser.find_element(xpath: ".//*[@id='popup_modal']/div[2]/div").displayed?
   sleep 2
   @browser.find_element(name:'username').send_keys "navyashree"
   sleep 3
   @browser.find_element(name:'password').send_keys "navya123!"
end

When("I click on Submit button") do
  sleep 5
  @browser.find_element(name: 'commit').click 
end

Then("I should see {string}") do |var1|
  var2 = @browser.find_element(xpath: '//div[1]/div/div/p').text
  if var2 == var1
    puts "#{var1}"
  else
    raise "#{var1} Not found"
  end
end

Given("I am on BugTracker Dashboard page") do
  @browser.find_element(xpath: "//nav").displayed?
 end

When("I entered valid inputs for all the fields") do
  sleep 3
  @browser.find_element(xpath: ".//*[@id='create-button']/form/div/input").click 
  sleep 3
  @browser.find_element(xpath: ".//*[@id='popup_modal']/div[2]/div").displayed?
  sleep 2
  @browser.find_element(id:'Issues3').send_keys "Login Error"
  sleep 2
  @browser.find_element(id:'issue_issue_type').send_keys "Bugs"
  sleep 2
  @browser.find_element(id:'Description3').send_keys "I have issues in log in "
  sleep 2
  @browser.find_element(id:'Comment3').send_keys "Fail"
  sleep 2
  @browser.find_element(id:'issue_status').send_keys "Open"
end

When("I click on Ok button") do
  sleep 2
  @browser.find_element(name: 'commit').click 
end

Then("I should see bug which was created in the list") do
  sleep 3
  var = "Login Error"  
  p var1 = @browser.find_element(xpath: "//div[3]/div[2]/div[1]").text  
    if var1.include? var
      puts "#{var}"
    else
      raise.Exception.new "#{var} Not found"
   end
  end


