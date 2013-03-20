[
 {:name => 'Clojure meetup', :description => 'All clojure geeks unite ! ', :date_time => DateTime.now},
 {:name => 'JUG', :description => 'Java users meetup group. Meets every thursday and do boring stuff ', :date_time => DateTime.now},
 {:name => 'Pune linux users group', :description => 'Prestigious community of pune linux users meet up and contri and eat bhel puri ', :date_time => DateTime.now},
 {:name => 'Muneeb ki shaadi', :description => 'Muneeb bhai says: kabul hai, kabul hai, kabul hai ! ', :date_time => DateTime.now}
].each do |event|
  Event.create(event)
end
