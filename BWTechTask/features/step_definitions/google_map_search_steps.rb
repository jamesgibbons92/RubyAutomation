Given(/^I am on "([^"]*)"$/) do |arg1|
  @browser.goto(arg1)
end

When(/^I search for "([^"]*)"$/) do |arg1|
  searchField  = @browser.text_field(:name => 'q')
  searchButton = @browser.button(:id => 'searchbox-searchbutton') 
  searchField.set(arg1)
  searchButton.click()
end

Then(/^I should see "([^"]*)"$/) do |arg1|
  infoPanel = @browser.div(:class => 'widget-pane-content-holder')
  assert_equal(true,infoPanel.div(:class => 'section-hero-header-title').text.upcase.include?(arg1.upcase)) 
  #make the assertion case insensitive 
end

Then(/^the address contains "([^"]*)"$/) do |arg1|
 infoPanel = @browser.div(:class => 'widget-pane-content-holder') 
 assert_equal(true,infoPanel.span(:class => 'section-info-text').text.upcase.include?(arg1.upcase))
 #There are multiple section-info-text so be carfeul, but we only need to check the first one
end

When(/^I type "([^"]*)"$/) do |arg1|
 searchField  = @browser.text_field(:name => 'q')
 searchField.set(arg1)
end

When(/^press the "([^"]*)" key$/) do |arg1|
 @browser.send_keys arg1.downcase.to_sym #i.e. :enter
end

Then(/^their opening times\.$/) do
 infoPanel = @browser.div(:class => 'widget-pane-content-holder')
 assert_equal(true,infoPanel.span(:class => 'section-info-hour-text').exists?)
 #Test will fail if the above is not true
 p infoPanel.span(:class => 'section-info-hour-text').text 
end

