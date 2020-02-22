# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Artist.destroy_all
Genre.destroy_all
Song.destroy_all

sage = Artist.create(name: "Sage Francis", bio: "Rhode Island Strange MotherFucker")
ceschi = Artist.create(name: "Ceschi Ramos", bio: "Slowly tearing it up starting from create Haven, CT")
vinnie = Artist.create(name: "Vinnie Paz", bio: "Eating Cheesesteaks and ripping versing out of Pennsylvania")

rap = Genre.create(name: "Rap")
Genre.create(name: "Pop")
Genre.create(name: "Rock")

Song.create(name: "Cracked Pipes", artist_id: sage.id, genre_id: rap.id)
Song.create(name: "Frank False", artist_id: ceschi.id, genre_id: rap.id)
Song.create(name: "Cheeseteaks", artist_id: vinnie.id, genre_id: rap.id)