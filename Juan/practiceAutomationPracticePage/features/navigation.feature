Feature: Practice about navigation test
	
	Background: Open the page.
	Given I open the testing page
	@tc1
	Scenario: test navigation 
	When I press the option "WOMEN" in the menu
	Then I should see the following categories:
	 |Tops (2)   |
	 |Dresses (5)|

	@tc2
	Scenario: test navigation 
	When I press the option "DRESSES" in the menu
	Then I should see the following categories:
	|Casual Dresses (1)| 
	
	@tc3
	Scenario: test navigation 
	When I press the option "T-SHIRTS" in the menu
	Then I should see the following categories:
	 |S(1)| 

	@tc4
	Scenario: verify that option selected is displayed on menu and screen
	When I press the option "WOMEN" in the menu
	Then I should see option selected in:
	|menu |
	|screen |
	