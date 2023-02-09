p "Cleaning database..."
User.destroy_all
Event.destroy_all
Sport.destroy_all
p 'Database cleaned'

p "Creating Users..."
@user1 = User.create!(email: "test@test.com", first_name: "Romain", last_name: "Weyrich", password: "123456", password_confirmation: "123456", age: "31", phone_number: "0606060606", sex: "Homme", address: "rue de la Paix", zip_code: "1018", city: "Lausanne", user_description: "fan de foot")
@user2 = User.create!(email: "test1@test.com", first_name: "Alex", last_name: "Dionisio", password: "123456", password_confirmation: "123456", age: "32", phone_number: "0606060607", sex:"Homme", address: "rue Victor Hugo", zip_code: "13005", city: "Marseille", user_description: "fan de tennis")
@user3 = User.create!(email: "test2@test.com", first_name: "Fred", last_name: "Jeanne", password: "123456", password_confirmation: "123456", age: "40", phone_number: "0606060608", sex:"Homme", address: "rue Romain Weyrich", zip_code: "40100", city: "Dax", user_description: "fan de badminton")
@user4 = User.create!(email: "test3@test.com", first_name: "Natacha", last_name: "Kusnova", password: "123456", password_confirmation: "123456", age: "25", phone_number: "0606060609", sex:"Femme", address: "rue Alex Dionisio", zip_code: "67000", city: "Strasbourg", user_description: "fan de basket")
@user5 = User.create!(email: "test4@test.com", first_name: "Corine", last_name: "Tuche", password: "123456", password_confirmation: "123456", age: "58", phone_number: "0606060610", sex: "Femme", address: "rue de la Paix", zip_code: "75001", city: "Paris", user_description: "fan de foot")
@user6 = User.create!(email: "test5@test.com", first_name: "John", last_name: "Smith", password: "123456", password_confirmation: "123456", age: "40", phone_number: "0606060611", sex:"Homme", address: "rue Victor Hugo", zip_code: "1018", city: "Lausanne", user_description: "fan de tennis")
@user7 = User.create!(email: "test6@test.com", first_name: "Gégé", last_name: "Depardieu", password: "123456", password_confirmation: "123456", age: "75", phone_number: "0606060612", sex:"Homme", address: "rue Romain Weyrich", zip_code: "13005", city: "Marseille", user_description: "fan de badminton")
@user8 = User.create!(email: "test7@test.com", first_name: "Léa", last_name: "Martin", password: "123456", password_confirmation: "123456", age: "7", phone_number: "0606060613", sex:"Femme", address: "rue Alex Dionisio", zip_code: "67000", city: "Strasbourg", user_description: "fan de basket")
p "8 users created"

p "Creating Sports..."
@sport1 = Sport.create!(sport_name: "Football")
@sport2 = Sport.create!(sport_name: "Tennis")
@sport3 = Sport.create!(sport_name: "Badminton")
@sport4 = Sport.create!(sport_name: "Basketball")
@sport5 = Sport.create!(sport_name: "Volleyball")
@sport7 = Sport.create!(sport_name: "Rugby")
@sport8 = Sport.create!(sport_name: "Baseball")
@sport6 = Sport.create!(sport_name: "Handball")
@sport9 = Sport.create!(sport_name: "Cricket")
@sport10 = Sport.create!(sport_name: "Golf")
@sport11 = Sport.create!(sport_name: "Hockey")
@sport12 = Sport.create!(sport_name: "Judo")
@sport13 = Sport.create!(sport_name: "Natation")
@sport14 = Sport.create!(sport_name: "Tir à l'arc")
@sport15 = Sport.create!(sport_name: "Tir")
@sport16 = Sport.create!(sport_name: "Tennis de table")
@sport17 = Sport.create!(sport_name: "Ultimate")
@sport18 = Sport.create!(sport_name: "VTT")
@sport19 = Sport.create!(sport_name: "Yoga")
@sport20 = Sport.create!(sport_name: "Aviron")
@sport21 = Sport.create!(sport_name: "Athlétisme")
@sport22 = Sport.create!(sport_name: "Moto cross")
@sport23 = Sport.create!(sport_name: "Randonnée")
@sport24 = Sport.create!(sport_name: "Ski")
@sport25 = Sport.create!(sport_name: "Snowboard")
@sport26 = Sport.create!(sport_name: "Trekking")
@sport27 = Sport.create!(sport_name: "Pelote basque")
@sport28 = Sport.create!(sport_name: "Pétanque")
@sport29 = Sport.create!(sport_name: "Poker")
@sport30 = Sport.create!(sport_name: "Billard")
@sport31 = Sport.create!(sport_name: "Bowling")
@sport32 = Sport.create!(sport_name: "Curling")
@sport33 = Sport.create!(sport_name: "Escalade")
@sport34 = Sport.create!(sport_name: "Football américain")
@sport35 = Sport.create!(sport_name: "Gymnastique")
@sport36 = Sport.create!(sport_name: "Haltérophilie")
@sport37 = Sport.create!(sport_name: "Jeu de paume")
@sport38 = Sport.create!(sport_name: "Danse")
p "38 Sports created"

p "Creating Events..."
Event.create!(title: "5vs5", description: "Le Lorem Ipsum est le faux texte standard de l'imprimerie depuis les années 1500, ", date: "20-02-2023", time: "10:00:00", price: "8", address: "rue Oberkampf, Paris", level: "Normal", players_number: "8", duration: "80", user: @user1, sport: @sport1, age_mini: "7", age_maxi: "")
Event.create!(title: "Entre filles", description: "Le Lorem Ipsum est le faux texte standard de l'imprimerie depuis les années 1500", date: "2023-02-20", time: "11:00:00", price: "0", address: "Route des Plaines du Loup 7, Lausanne", level: "ATP", players_number: "3", duration: "120", user: @user2, sport: @sport2, age_mini: "16", age_maxi: "")
Event.create!(title: "1vs1 minimum", description: "Le Lorem Ipsum est le faux texte standard de l'imprimerie depuis les années 1500", date: "2023-02-20", time: "12:00:00", price: "7", address: "3 Bd Michelet, Marseille", level: "Expérimenté", players_number: "1", duration: "60", user: @user3, sport: @sport3, age_mini: "18", age_maxi: "")
Event.create!(title: "3vs3 ou plus", description: "Le Lorem Ipsum est le faux texte standard de l'imprimerie depuis les années 1500", date: "2023-02-20", time: "13:00:00", price: "0", address: "12 Rue de l'Extenwoerth, Strasbourg", level: "Débutant", players_number: "6", duration: "60", user: @user4, sport: @sport4, age_mini: "7", age_maxi: "")
Event.create!(title: "4vs4", description: "Le Lorem Ipsum est le faux texte standard de l'imprimerie depuis les années 1500", date: "2023-02-20", time: "10:00:00", price: "8", address: "35 Rue du Chevalier de la Barre, Paris", level: "Normal", players_number: "8", duration: "80", user: @user1, sport: @sport4, age_mini: "", age_maxi: "")
Event.create!(title: "1vs1 minimum", description: "Le Lorem Ipsum est le faux texte standard de l'imprimerie depuis les années 1500", date: "2023-02-20", time: "11:00:00", price: "0", address: "Allée des Evadés, Peyrehorade", level: "ATP", players_number: "3", duration: "120", user: @user2, sport: @sport3, age_mini: "18", age_maxi: "30")
Event.create!(title: "A mon domicile", description: "Le Lorem Ipsum est le faux texte standard de l'imprimerie depuis les années 1500", date: "2023-02-20", time: "12:00:00", price: "7", address: "Quatre Chemins de Montolivet, Marseille", level: "Expérimenté", players_number: "1", duration: "60", user: @user3, sport: @sport17)
Event.create!(title: "5vs5", description: "Le Lorem Ipsum est le faux texte standard de l'imprimerie depuis les années 1500", date: "2023-02-20", time: "13:00:00", price: "0", address: "Petite Rue d'Austerlitz, Strasbourg", level: "Débutant", players_number: "6", duration: "60", user: @user4, sport: @sport1, age_mini: "", age_maxi: "40")
Event.create!(title: "Très Urgent", description: "Le Lorem Ipsum est le faux texte standard de l'imprimerie depuis les années 1500", date: "2023-02-20", time: "10:00:00", price: "8", address: "rue Danielle Casanova, Saint-Denis", level: "Normal", players_number: "8", duration: "80", user: @user1, sport: @sport30, age_mini: "16", age_maxi: "25")
Event.create!(title: "En salle", description: "Le Lorem Ipsum est le faux texte standard de l'imprimerie depuis les années 1500", date: "2023-02-20", time: "11:00:00", price: "0", address: "Avenue 8 Mai 1945, Bayonne", level: "Intermédiaire", players_number: "3", duration: "120", user: @user2, sport: @sport20, age_mini: "", age_maxi: "")
Event.create!(title: "En extérieur", description: "Le Lorem Ipsum est le faux texte standard de l'imprimerie depuis les années 1500", date: "2023-02-20", time: "12:00:00", price: "7", address: "225 avenue Ibrahim Ali, Marseille", level: "Expérimenté", players_number: "1", duration: "60", user: @user3, sport: @sport15, age_mini: "", age_maxi: "50")
Event.create!(title: "En salle", description: "Le Lorem Ipsum est le faux texte standard de l'imprimerie depuis les années 1500", date: "2023-02-20", time: "13:00:00", price: "0", address: "2 rue de Zurich, Colmar", level: "Débutant", players_number: "3", duration: "60", user: @user4, sport: @sport10, age_mini: "", age_maxi: "")
Event.create!(title: "En extérieur", description: "Le Lorem Ipsum est le faux texte standard de l'imprimerie depuis les années 1500", date: "2023-02-20", time: "10:00:00", price: "8", address: "route de trompe, Peyrehorade", level: "Normal", players_number: "2", duration: "80", user: @user5, sport: @sport32, age_mini: "16", age_maxi: "50")
Event.create!(title: "Tous les lundis", description: "Le Lorem Ipsum est le faux texte standard de l'imprimerie depuis les années 1500", date: "2023-02-20", time: "11:00:00", price: "0", address: "Place de la Concorde, Paris", level: "Professionel", players_number: "1", duration: "120", user: @user6, sport: @sport34, age_mini: "", age_maxi: "")
Event.create!(title: "Bières offertes !", description: "Le Lorem Ipsum est le faux texte standard de l'imprimerie depuis les années 1500", date: "2023-02-20", time: "12:00:00", price: "7", address: "Champs Elysées, Paris", level: "Expérimenté", players_number: "1", duration: "60", user: @user7, sport: @sport16, age_mini: "", age_maxi: "45")
Event.create!(title: "En extérieur", description: "Le Lorem Ipsum est le faux texte standard de l'imprimerie depuis les années 1500", date: "2023-02-20", time: "13:00:00", price: "0", address: "197 ancienne route du Grès, Orange", level: "Débutant", players_number: "4", duration: "60", user: @user8, sport: @sport19, age_mini: "3", age_maxi: "")
p "16 Events created"

# image_path = Rails.root.join("app/assets/images/Blablasport_logo_transparent.png")
# cloudinary_image = Cloudinary::Uploader.upload(image_path)
# picture6 = ActiveStorage::Blob.create_and_upload!(
#   io: URI.open(cloudinary_image['secure_url']),
#   filename: 'blablasport2.png',
#   content_type: 'image/png'
# )
# image_path = Rails.root.join("app/assets/images/marker2.png")
# cloudinary_image = Cloudinary::Uploader.upload(image_path)
# picture5 = ActiveStorage::Blob.create_and_upload!(
#   io: URI.open(cloudinary_image['secure_url']),
#   filename: 'marker.png',
#   content_type: 'image/png'
# )
# image_path = Rails.root.join("app/assets/images/logo_split.png")
# cloudinary_image = Cloudinary::Uploader.upload(image_path)
# picture3 = ActiveStorage::Blob.create_and_upload!(
#   io: URI.open(cloudinary_image['secure_url']),
#   filename: 'marker.png',
#   content_type: 'image/png'
# )
# image_path = Rails.root.join("app/assets/images/ball.png")
# cloudinary_image = Cloudinary::Uploader.upload(image_path)
# picture4 = ActiveStorage::Blob.create_and_upload!(
#   io: URI.open(cloudinary_image['secure_url']),
#   filename: 'marker.png',
#   content_type: 'image/png'
# )
# image_path = Rails.root.join("app/assets/images/marker3.png")
# cloudinary_image = Cloudinary::Uploader.upload(image_path)
# picture5 = ActiveStorage::Blob.create_and_upload!(
#   io: URI.open(cloudinary_image['secure_url']),
#   filename: 'marker3.png',
#   content_type: 'image/png'
# )
# puts "images uploaded..."

# campnou = Stadium.create!(user_id: @user.id, name: "Camp Nou", location: "Barcelona", energy_class: "C", stadium_description: "zzz", capacity: 99354, price: 49000)
# campnou.pictures.attach(picture1)
# campnou.pictures.attach(picture2)
# campnou.photo.attach(picture36)
