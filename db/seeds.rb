# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# require 'faker'
# include Faker

30.times do
    @status = [ "applied", "rejected", "interviewed"].sample

    Job.create([{ :title => Faker::Company.profession,
                  :company => Faker::Company.name,
                  :location => Faker::Address.city,
                  :date_applied => Faker::Date.birthday(0, 1),
                  :date_replied => Faker::Date.birthday(0, 1),
                  :status => @status,
                  :url => Faker::Internet.url

                    }])
end
