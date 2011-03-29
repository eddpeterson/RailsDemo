Given /^the following people:$/ do |people|
  Person.create!(people.hashes)
end

Then /^I should see the following people:$/ do |expected_people_table|
  expected_people_table.diff!(tableish('table tr', 'td,th'))
end

