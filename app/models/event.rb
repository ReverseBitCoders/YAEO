class Event

  include DataMapper::Resource

  property :id, Serial
  property :name, String, :length => 100, :required => true
  property :description, Text, :required => false
  property :date_time, DateTime, :required => false

end
