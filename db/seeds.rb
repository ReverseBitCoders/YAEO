[
 {:user_id => 1, :name => 'event1', :description => 'event 1 description ', :date_time => DateTime.now.utc },
].each do |event|
  Event.create(event)
end
