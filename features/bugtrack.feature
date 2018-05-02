@BugTracker_page
Feature: User login
I should be able to login BugTracker application
and create a bug with all input successfully

@Smoke
Scenario: Login 
Given I am on BugTracker page
When I entered username and password 
And I click on Submit button
Then I should see "Signed in Successfully"

@Create_bug_and_verify_buglist
Scenario: Creating a bug and Verifying the bug 
Given I am on BugTracker Dashboard page
When I entered valid inputs for all the fields 
And I click on Ok button
Then I should see bug which was created in the list

