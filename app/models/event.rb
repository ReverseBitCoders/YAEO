class Event
  include DataMapper::Resource
  before :save, :build_date_time
  attr_accessor :date, :time
  property :id, Serial

  # fields visible to user in the forms
  property :name, String, :length => 100, :required => true
  property :description, Text, :required => false
  property :date_time, DateTime, :required => false

  # fields not visible to user and set from backend
  property :created_by_user_id, Integer, :required => true, :index => true
  property :created_at, DateTime, :default => DateTime.now.utc, :required => true

  belongs_to :created_by, :model => 'User', :child_key => [:created_by_user_id], :required => true


  def build_date_time
    self.date_time = "#{date} #{time}".to_datetime
  end
  def date
    @date if not @date.nil? and not @date.blank?
  end
  def time
    @time if not @date.nil? and not @date.blank?
  end
end
