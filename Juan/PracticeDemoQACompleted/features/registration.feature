Feature: Registration

Background: Open application and select registration option

	Given I open the testing page
	When I select Registration option
	Then I should see "Registration" title displayed

@tc1
Scenario: UI validation

When I click on Submit button
Then I should see 5 validation messages with "* This field is required"

Given I fill the Passenger Information fields in New Request screen
|First Name|Juan|
|Last Name |Delgadillo|
When I click on Submit button 
Then I should see 6 validation messages with "*this field is required"

@tc2
Scenario: Add a user
Given I fill the Passenger Information fields in New Request screen
|First Name|Juan101|
|Last Name |Delgadillo|
|Marital Status|Married|
|Hobby|Reading|
|Phone Number|59170353631|
|Username|Juan101|
|E-mail|Juan101@jalasoft.com|
|Confirm Password|Control123|
|Password|Control123|
When I click on Submit button 
Then I should see "Thank you for your registration". 

@tc3
Scenario: Validate information displayed after add a user
Given I fill the Passenger Information fields in New Request screen
|First Name|Juan101|
|Last Name |Delgadillo|
|Marital Status|Married|
|Hobby|Reading|
|Phone Number|59170353631|
|Username|Juan101|
|E-mail|Juan101@jalasoft.com|
|Confirm Password|Control123|
|Password|Control123|
When I click on Submit button 
Then I should see "Username already exists". 
	And I should see the following data
	|Juan101|
	|Delgadillo|
	|59170353631|
	|Juan101|
	|Juan101@jalasoft.com|

@tc4
Scenario: Verify message for duplicated user
Given I fill the Passenger Information fields in New Request screen
|First Name|Juan101|
|Last Name |Delgadillo|
|Marital Status|Married|
|Hobby|Reading|
|Phone Number|59170353631|
|Username|Juan101|
|E-mail|Juan101@jalasoft.com|
|Confirm Password|Control123|
|Password|Control123|
When I click on Submit button 
Then I should see "Username already exists". 