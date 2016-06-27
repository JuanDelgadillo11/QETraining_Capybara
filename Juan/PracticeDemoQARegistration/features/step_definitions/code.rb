Given(/^I open the testing page$/) do
  visit 'http://demoqa.com'
  page.driver.browser.manage.window.maximize
end

# When(/^I select registration option$/) do
When(/^I select (.*?) option$/) do |menu|
	page.find('.menu',:text=> menu).click
end

Then(/^I should see "(.*?)" title displayed$/) do |main_title|
  expect(page.find('h1').text).to eql main_title 
  #valido la cabecera del formulario qeu dice Registration
end

# When(/^I click on Submit button$/) do
When(/^I click on (.*?) button$/) do |button_name|
  page.click_button button_name
end


Given(/^I fill input I fill the Passenger Information fields in New Request screen$/) do |table|
values=table.rows_hash
	values.each_pair do |label, text|

		label_found= page.find('label',:text=> label) #le mando el valor en este caso de la primera columna
		if label=='Marital Status' && text=='Single'
			page.find(:xpath, '//*[@id="pie_register"]/li[2]/div/div/input[1]').set(true)
			elsif label=='Marital Status' && text=='Married'
				page.find(:xpath, '//*[@id="pie_register"]/li[2]/div/div/input[2]').set(true)
				elsif label=='Marital Status' && text=='Divorced'
					page.find(:xpath, '//*[@id="pie_register"]/li[2]/div/div/input[3]').set(true)
				#modificacion
					elsif label=='Hobby' && text=='Dance'
						page.find(:xpath, '//*[@id="pie_register"]/li[3]/div/div[1]/input[1]').set(true)
						elsif label=='Hobby' && text=='Reading'
							page.find(:xpath, '//*[@id="pie_register"]/li[3]/div/div[1]/input[2]').set(true)
							elsif label=='Hobby' && text=='Cricket'
								page.find(:xpath, '//*[@id="pie_register"]/li[3]/div/div[1]/input[3]').set(true)
								
								 elsif label=='Password' 
									page.find(:xpath,"//div/label[text()='#{label}']//following-sibling::input").set text 	
								# 		label_found1=page.find(:xpath, '//*[@id="password_2"]')
								# 		label_found1.find(:xpath,'following-sibling::input[1]').set text
								 	elsif label=='Confirm Password' 
										page.find(:xpath,"//div/label[text()='#{label}']//following-sibling::input").set text
								# 		label_found1=page.find(:xpath, '//*[@id="confirm_password_password_2"]')
								#         label_found1.find(:xpath,'following-sibling::input[1]').set text
								        else 
										label_found.find(:xpath,'following-sibling::input[1]').set text
	    end
	end
end


Then(/^I should see (\d+) validation messages with "([^"]*)"$/) do |arg1, arg2|
  @uno=arg1
  @uno=arg2
end