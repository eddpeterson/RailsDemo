require 'spec_helper'

describe Person do
  
  it "Should save new person" do
    person = Factory(:person)
    person.save.should be true
  end
  
  it "Should validate presence of first name" do
    person = Factory(:person)
    person.first_name = nil
    person.save.should be false
  end
end
