class Person   
  include MongoMapper::Document  
  key :first_name, String
  key :last_name, String  
  
  validates_presence_of :first_name, :message => "can't be blank"
end
