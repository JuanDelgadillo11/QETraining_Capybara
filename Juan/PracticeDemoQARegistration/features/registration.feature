Feature: Registration

Background: Open application and select registration option

	Given I open the testing page
	When I select Registration option
	Then I should see "Registration" title displayed

@tc1
Scenario: UI validation

When I click on Submit button
Then I should see 7 validation messages with "* This field is required"

Given I fill input I fill the Passenger Information fields in New Request screen
|First Name|Juan|
|Last Name |Delgadillo|
|Marital Status|Married|
|Hobby|Reading|
|Phone Number|59170353631|
|Username|juan11|
|E-mail|juan.delgadillo@jalasoft.com|
|Password|Control123|
|Confirm Password|Control123|

When I click on Submit button 