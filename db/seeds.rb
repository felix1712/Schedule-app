# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
event_list = [
  [ "abcdefg", Time.now, Time.now, "bogor", "mencoba" ],
  [ "abcdefgh", Time.now, Time.now, "bogor2", "mencoba2" ],
  [ "abcdefgi", Time.now, Time.now, "bogor3", "mencoba3" ],
  [ "abcdefgj", Time.now, Time.now, "bogor4", "mencoba4" ],
  [ "abcdefgk", Time.now, Time.now, "bogor5", "mencoba5" ]
]

event_list.each do |summary, start_at, end_at, location, title |
  Event.create( summary: summary, start_at: start_at, end_at: end_at, location: location, title: title )
end
