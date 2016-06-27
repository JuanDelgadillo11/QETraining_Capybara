Feature: main page validation
   here we are going to validate that all expected content is displayed on main page

Background: 
	Given open the testing page

 @tc1
 Scenario: Verify Image titles   
  	When page is displayed  
 	Then following Image title should be displayed:  
 	| Unique & Clean   |  
 	| Customer Support |  
 	| Very Flexible    |  
 
 @tc2 
 Scenario: Verify header options in the top of the page
 	When page is displayed  
 	Then header menu should display the following buttons:  
 	| Home     |  
 	| About us |  
 	| Services |  
 	| Demo     |  
 	| Blog     |  
 	| Contact  |  
 
 @tc3 
 Scenario: Verify right options
 	When page is displayed  
 	Then right menu is displayed with following Sections:  
 	| Registration       |  
 	| interaction        |  
 	| Widget             |  
 	| Frames and Windows |  
  
 @tc4
	Scenario Outline: validate tab information
	Given a tab to search
	When I click on tab name "<TabName>" 
	Then I should see the tab title equal to "<Title_Expected_result>"
	 And Content title equal to "<Content_Title_Expected_result>"
	 And Content description equal to "<Content_Description_Expected_result>"

	Examples:
	 |TabName|Title_Expected_result|Content_Title_Expected_result|Content_Description_Expected_result           										|
	 |Tab 1  |Tab 1                |Content 1 Title              |The content could contain anything text page or submit form or any other HTML objects.|
	 |Tab 2  |Tab 2                |Content 2 Title              |The content could contain anything text page or submit form or any other HTML objects.|
	 |Tab 3  |Tab 3                |Content 3 Title              |The content could contain anything text page or submit form or any other HTML objects.|
	 |Tab 4  |Tab 4                |Content 4 Title              |The content could contain anything text page or submit form or any other HTML objects.|
	 |Tab 5  |Tab 5                |Content 5 Title              |The content could contain anything text page or submit form or any other HTML objects.|

