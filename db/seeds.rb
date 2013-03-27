[
 {:user_id => 1, :name => 'Clojure meetup', :description => 'All clojure geeks unite ! ', :date_time => DateTime.now.utc },
 {:user_id => 1, :name => 'JUG', :description => 'Java users meetup group. Meets every thursday and do boring stuff ', :date_time => DateTime.now.utc},
 {:user_id => 1, :name => 'Pune linux users group', :description => 'Prestigious community of pune linux users meet up and contri and eat bhel puri ', :date_time => DateTime.now.utc}
].each do |event|
  Event.create(event)
end
