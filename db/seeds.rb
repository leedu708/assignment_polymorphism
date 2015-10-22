# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Student.delete_all
GraduateProgram.delete_all
UndergraduateProgram.delete_all

puts 'Entres Deleted'

12.times do
  GraduateProgram.create(:name => Faker::Company.name)
end

puts 'Graduate Programs Created'

24.times do
  UndergraduateProgram.create(:name => Faker::Company.name)
end

puts 'Undergraduate Programs Created'

100.times do
  Student.create(:name => Faker::Name.name)
end

Student.all.map do |s|

  filter = rand

  if filter < 0.35
    GraduateProgram.all.sample.students << s
  elsif filter < 1.0
    UndergraduateProgram.all.sample.students << s
  end

end

puts 'Students Created'

puts 'Seeding Complete!'