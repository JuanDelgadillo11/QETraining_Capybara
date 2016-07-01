Given(/^I open the testing page$/) do
  visit("http://automationpractice.com")
end

When(/^I press the option "(.*?)" in the menu$/) do |option|
  @value=option 
  if page.find("#block_top_menu").find('li', text: eval("#{@value} = '#{option}'"))
  	 case @value
  	 	when "WOMEN"
  	 		page.find("#block_top_menu").find('li', text: eval("#{@value} = '#{option}'")).click
  	 		
  		when "WOMEN"
  	 		page.find("#block_top_menu").find('li', text: eval("#{@value} = '#{option}'")).click

  	 	when "T-SHIRTS"
  	 		page.find("#block_top_menu").find('li', text: eval("#{@value} = '/^#{option}$/'")).click	
  	 end
	
	  p 'Panel does not exist'
  end
end

Then(/^I should see the following categories:$/) do |table_categories|
  categoryValue=table_categories.rows
  	  categoryValue.each do |data|
	  	aux= page.find(:xpath, "//*[@id='ul_layered_category_0']/li[1]/label/a").text
	  	expect(aux).to eq(data)
	 end
end

Then(/^I should see option selected in:$/) do |table_values|
  table = table_values.raw
		table.each do |option|
			case option.first
				when "menu"
					 screen = page.find('h2')
				when "screen"
					 screen = page.find('h1').all('span').first
				end
		expect(screen.text).to eq @value
	end
end