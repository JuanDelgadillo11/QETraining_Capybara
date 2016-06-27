Given(/^open the testing page$/) do
  visit 'http://demoqa.com'
  page.driver.browser.manage.window.maximize
end

When(/^page is displayed$/) do
  p 'validation will start now'
end

Then(/^following Image title should be displayed:$/) do |images|
  table = images.rows 
  table.each do |image| 
   expect(page.has_xpath?("//h5[text()='#{image[0]}']//following-sibling::*/descendant::img")).to be(true) 
  end 
end

Then(/^header menu should display the following buttons:$/) do |headerMenu|
  table = headerMenu.rows 
  table.each do |value| 
   expect(page.has_link?("#{value[0]}")).to be(true) 
  end 
end

Then(/^right menu is displayed with following Sections:$/) do |section|
  table = section.rows 
  table.each do |item| 
    expect(page.assert_text("#{item[0]}")).to be(true) 
  end 
end

Given(/^a tab to search$/) do
  p 'Searching tabs and values'
end

When(/^I click on tab name "([^"]*)"$/) do |tabName|
  @tabNameValue=tabName
  click_link @tabNameValue
end

Then(/^I should see the tab title equal to "([^"]*)"$/) do |tabTitle|
  @tabTitleValue=tabTitle
  page.assert_text(@tabTitleValue)
end

Then(/^Content title equal to "([^"]*)"$/) do |contentTitle|
  @contentTitleValue=contentTitle
  page.assert_text(@contentTitleValue)
end

Then(/^Content description equal to "([^"]*)"$/) do |contentDescription|
  @contentDescriptionValue=contentDescription
  page.assert_text(@contentDescriptionValue)
end