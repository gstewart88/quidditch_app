# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Team.delete_all
Player.delete_all

Team.create!(name: "Gryffindor", founded: "1 March 1871", mascot: "A Big Lion", image: "https://cdn.dailyteedeals.com/designs/24557/thumb_c6768356-17b5-4bc5-8e58-f17f28dd694d.jpg")
Team.create!(name: "Ravenclaw", founded: "6 November 1887", mascot: "A Big Eagle", image: "http://vignette3.wikia.nocookie.net/harrypotter/images/d/da/R_final.jpg/revision/latest?cb=20111021043855")
Team.create!(name: "Hufflepuff", founded: "24 May 1909", mascot: "A Big Badger", image: "http://vignette3.wikia.nocookie.net/harrypotter/images/3/3f/H_final.jpg/revision/latest?cb=20111027164825")
Team.create!(name: "Slytherin", founded: "24 June 1883", mascot: "A Big Snake", image: "http://vignette1.wikia.nocookie.net/harrypotter/images/d/da/S_final.jpg/revision/latest?cb=20111027165212")

Player.create!(name: "Harry Potter", position: "Seeker", team: "Gryffindor", image: "http://s3-static-ak.buzzfed.com/static/2015-01/28/1/campaign_images/webdr08/19-of-the-best-harry-potter-related-insults-2-14219-1422427705-20_dblbig.jpg")
Player.create!(name: "Katie Bell", position: "Chaser", team: "Gryffindor", image: "http://img3.wikia.nocookie.net/__cb20100522154435/harrypotter/images/3/37/Katie_Bell.jpg")
Player.create!(name: "Ginny Weasley", position: "Chaser", team: "Gryffindor", image: "http://vignette2.wikia.nocookie.net/harrypotterfanfiction/images/1/18/-bilder.4ever.eu-_ginny_weasley_139573.jpg/revision/latest?cb=20120504051436")
Player.create!(name: "Dean Thomas", position: "Chaser", team: "Gryffindor", image: "http://vignette3.wikia.nocookie.net/harrypotter/images/c/cf/Deanthomas_prop.PNG/revision/latest?cb=20090808162439")
Player.create!(name: "Jimmy Peakes", position: "Beater", team: "Gryffindor", image: "http://vignette2.wikia.nocookie.net/harrypotter/images/3/3a/Jimmypeakes.PNG/revision/latest?cb=20110522183232")
Player.create!(name: "Ritchie Coote", position: "Beater", team: "Gryffindor", image: "http://www.polyvore.com/cgi/img-thing?.out=jpg&size=l&tid=9597098")
Player.create!(name: "Cormac McLaggen", position: "Keeper", team: "Gryffindor", image: "http://coolspotters.com/files/photos/196905/cormac-mclaggen-profile.png")
