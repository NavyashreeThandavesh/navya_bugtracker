@BugTracker_page
Feature: User has to be login
I should open the bugtracker user dashboard

@Login_click
Scenario: 
Given I am on Bugtracker page
When I click on login button 
Then I should see the login pop-up menu

@Login_user
Scenario: 
Given I entered username and password 
When I click on submit button
Then I see the signed in successfully message 

@create
Scenario: 
Given I click on create button 
When I should see the create pop-up menu
Then I entered valid input's for all the fields 

@Bug_list
Scenario: 
Given I need to check bug is created or not
When I should see list in created
Then see in the list