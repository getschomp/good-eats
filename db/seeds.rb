# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


restaurant1 = Restaurant.create(name: 'Good Eats', address: 'Columbus Ave', city: 'Boston', state: 'MA', zip_code: '02115', description: 'get some pizza for cheap, behind resmail')
restaurant2 = Restaurant.create(name: 'Nautilus', address: 'camebridge street', city: 'Nantucket', state: 'MA', zip_code: '02554', description: 'get some octopi and fernet branca')


create_table "restaurants", force: true do |t|
  t.string   "name",       null: false
  t.string   "address",    null: false
  t.string   "city",       null: false
  t.string   "state",      null: false
  t.string   "zip_code",   null: false
  t.string   "desciprion"
  t.datetime "created_at"
  t.datetime "updated_at"
end
