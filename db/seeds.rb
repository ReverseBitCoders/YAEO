[
 { :name => 'Test event one', :date_time => DateTime.today.utc}
 { :name => 'Test event two', :date_time => DateTime.today.utc}
 { :name => 'Test event three', :date_time => DateTime.today.utc}
].each do |event|
  Event.create(event)
end
