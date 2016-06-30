Given(/^I open the testing page$/) do
  visit 'http://demoqa.com'
  page.driver.browser.manage.window.maximize
end

When(/^I select (.*?) option$/) do |menu|
	page.find('.menu',:text=> menu).click
end

Then(/^I should see "(.*?)" title displayed$/) do |main_title|
  expect(page.find('h1').text).to eql main_title 

end

When(/^I click on (.*?) button$/) do |button_name|
  page.click_button button_name
end

Given(/^I fill the Passenger Information fields in New Request screen$/) do |table|
values=table.rows_hash
	values.each_pair do |label, text|

		label_found= page.find('label',:text=> /^#{label}$/) 
		if label=='Marital Status' && text=='Single'
			page.find('Label',:text=>text).find(:xpath,'.//following-sibling::input[1]').set(true)	
			elsif label=='Marital Status' && text=='Married'
				page.find('Label',:text=>text).find(:xpath,'.//following-sibling::input[1]').set(true)	
				elsif label=='Marital Status' && text=='Divorced'
					page.find('Label',:text=>text).find(:xpath,'.//following-sibling::input[1]').set(true)	
					elsif label=='Hobby' && text=='Dance'
						page.find(:xpath, '//*[@id="pie_register"]/li[3]/div/div[1]/input[1]').set(true)
						elsif label=='Hobby' && text=='Reading'
							page.find(:xpath, '//*[@id="pie_register"]/li[3]/div/div[1]/input[2]').set(true)
							elsif label=='Hobby' && text=='Cricket'
								page.find(:xpath, '//*[@id="pie_register"]/li[3]/div/div[1]/input[3]').set(true)
					
								 elsif label=='Password' 
										page.find('label',:text=>/^#{label}$/).find(:xpath,'.//following-sibling::input[1]').set text

								 	elsif label=='Confirm Password' 
										page.find(:xpath,"//div/label[text()='#{label}']//following-sibling::input").set text
								        else 
											label_found.find(:xpath,'following-sibling::input[1]').set text
	    end
	end
end


Then(/^I should see (\d+) validation messages with "(.*?)"$/) do |number_of_times, message_displayed|
  	page.assert_text(message_displayed,:count => number_of_times)
end
Then(/^I should see "([^"]*)"\.$/) do |message|
  p page.find('p',:text=>message).text
  expect(page.assert_text("#{message}")).to be(true)
end

Then(/^I should see the following data$/) do |expected_values|
  values=expected_values.rows
  	values.each do |data|
  		expect(page.assert_text("#{data}")).to be(true)		
  end
end
