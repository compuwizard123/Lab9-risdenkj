Given /^the application is running$/ do
  run_interactive(unescape("ruby chatbot.rb"))
end

Then /^I should see "([^""]*)"$/ do |text|
  assert_partial_output(text)
end

And /^I see "([^""]*)"$/ do |text|
  assert_partial_output(text)
end

When /^I type "([^""]*)" and press Enter$/ do |text|
  type(text)
end

Then /^the program should exit with status (\d+)$/ do |exit_status|
  @last_exit_status.should == exit_status.to_i
end
