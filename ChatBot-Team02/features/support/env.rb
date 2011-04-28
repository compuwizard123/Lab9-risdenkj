require 'rubygems' # Use the Ruby Gems systeml we will be importing gems
require 'aruba/cucumber' # Use the Cucumber-specific Aruba extensions

# arumba will create a temp directory for our app to run in by default.
# we don't want this, but would prefer it just ran where we put it
Before do
  @dirs = [Dir.pwd]
end
