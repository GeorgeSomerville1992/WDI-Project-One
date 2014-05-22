# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
admin_user = User.create([{ name: "George"}, {email: "georges@ascotlawyers.co.uk"}, {role: "admin"}, {created_at: "2014-05-20"}, {updated_at: "2014-05-20"}])

test_artist = Artist.create([{ name: "andy-c"}, {picture: "sample"}, {date_created: "03/05/2012"} ])

test_song = Song.create([{name: "test-song"}, {file: "test-file"}, {date_created: "03/05/2012" } ])

test_ablum  = Album.create([{name: "test-album"}, {artwork: "test_artwork"},{date_created: "03/05/2012"}])

Song(id: integer, name: string, file: text, date_created: date, date_modifed: date, created_at: datetime, updated_at: datetime, user_id: integer, ablum_id: integer, artist_id: integer)