Given /^there is a ticket called "([^\"]*)"$/ do |number|
  Factory(:ticket, :number => number)
end
