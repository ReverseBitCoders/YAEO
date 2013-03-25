class Event

  include DataMapper::Resource

  property :id, Serial

  # fields visible to user in the forms
  property :name, String, :length => 100, :required => true
  property :description, Text, :required => false
  property :date_time, DateTime, :required => false

  # fields not visible to user and set from backend
  property :created_by_user_id, Integer, :required => true
  property :created_at, DateTime, :default => DateTime.now.utc, :required => true
end
