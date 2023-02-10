p "Cleaning database..."
User.destroy_all
Event.destroy_all
Sport.destroy_all
p 'Database cleaned'

p "Creating Users..."
@user1 = User.create!(email: "test@test.com", first_name: "Romain", last_name: "Weyrich", password: "123456", password_confirmation: "123456", age: "32", phone_number: "0606060606", sex: "Homme", address: "rue de la Paix", zip_code: "1018", city: "Lausanne", user_description: "fan de foot")
@user2 = User.create!(email: "test1@test.com", first_name: "Alex", last_name: "Dionisio", password: "123456", password_confirmation: "123456", age: "32", phone_number: "0606060607", sex:"Homme", address: "rue Victor Hugo", zip_code: "13005", city: "Marseille", user_description: "fan de tennis")
@user3 = User.create!(email: "test2@test.com", first_name: "Fred", last_name: "Jeanne", password: "123456", password_confirmation: "123456", age: "40", phone_number: "0606060608", sex:"Homme", address: "rue Romain Weyrich", zip_code: "40100", city: "Dax", user_description: "fan de badminton")
@user4 = User.create!(email: "test3@test.com", first_name: "Jeff", last_name: "Tuche", password: "123456", password_confirmation: "123456", age: "25", phone_number: "0606060609", sex:"Femme", address: "rue Alex Dionisio", zip_code: "67000", city: "Strasbourg", user_description: "fan de basket")
@user5 = User.create!(email: "test4@test.com", first_name: "Mickey", last_name: "Mouse", password: "123456", password_confirmation: "123456", age: "58", phone_number: "0606060610", sex: "Femme", address: "rue de la Paix", zip_code: "75001", city: "Paris", user_description: "fan de foot")
@user6 = User.create!(email: "test5@test.com", first_name: "François", last_name: "Pignon", password: "123456", password_confirmation: "123456", age: "40", phone_number: "0606060611", sex:"Homme", address: "rue Victor Hugo", zip_code: "1018", city: "Lausanne", user_description: "fan de tennis")
@user7 = User.create!(email: "test6@test.com", first_name: "Kylian", last_name: "Mbappé", password: "123456", password_confirmation: "123456", age: "75", phone_number: "0606060612", sex:"Homme", address: "rue Romain Weyrich", zip_code: "13005", city: "Marseille", user_description: "fan de badminton")
@user8 = User.create!(email: "test7@test.com", first_name: "Scarlett", last_name: "Johansson", password: "123456", password_confirmation: "123456", age: "7", phone_number: "0606060613", sex:"Femme", address: "rue Alex Dionisio", zip_code: "67000", city: "Strasbourg", user_description: "fan de basket")
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
@sport39 = Sport.create!(sport_name: "Squash")
p "39 Sports created"

p "Creating Events..."
Event.create!(title: "5vs5", description: "Le Lorem Ipsum est le faux texte standard de l'imprimerie depuis les années 1500, ", date: "20-02-2023", time: "10:00:00", price: "8", address: "rue Oberkampf, Paris", level: "Normal", players_number: "8", duration: "80", user: @user1, sport: @sport1, age_mini: "7", age_maxi: "")
Event.create!(title: "Entre filles", description: "Le Lorem Ipsum est le faux texte standard de l'imprimerie depuis les années 1500", date: "2023-02-20", time: "11:00:00", price: "0", address: "Route des Plaines du Loup 7, Lausanne", level: "ATP", players_number: "3", duration: "120", user: @user2, sport: @sport2, age_mini: "16", age_maxi: "")
Event.create!(title: "1vs1 minimum", description: "Le Lorem Ipsum est le faux texte standard de l'imprimerie depuis les années 1500", date: "2023-02-20", time: "12:00:00", price: "7", address: "3 Bd Michelet, Marseille", level: "Expérimenté", players_number: "1", duration: "60", user: @user3, sport: @sport39, age_mini: "18", age_maxi: "")
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


# campnou = Stadium.create!(user_id: @user.id, name: "Camp Nou", location: "Barcelona", energy_class: "C", stadium_description: "zzz", capacity: 99354, price: 49000)
# campnou.pictures.attach(picture1)
# campnou.pictures.attach(picture2)
# campnou.photo.attach(picture36)

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
# # )
# image_path = Rails.root.join("app/assets/images/background/blablasport1.jpg")
# cloudinary_image = Cloudinary::Uploader.upload(image_path)
# picture6 = ActiveStorage::Blob.create_and_upload!(
#   io: URI.open(cloudinary_image['secure_url']),
#   filename: 'blablasport1.jpg',
#   content_type: 'image/jpg'
# )
# image_path = Rails.root.join("app/assets/images/background/blablasport2.jpg")
# cloudinary_image = Cloudinary::Uploader.upload(image_path)
# picture7 = ActiveStorage::Blob.create_and_upload!(
#   io: URI.open(cloudinary_image['secure_url']),
#   filename: 'blablasport2.jpg',
#   content_type: 'image/jpg'
# )
# image_path = Rails.root.join("app/assets/images/background/blablasport3.jpg")
# cloudinary_image = Cloudinary::Uploader.upload(image_path)
# picture8 = ActiveStorage::Blob.create_and_upload!(
#   io: URI.open(cloudinary_image['secure_url']),
#   filename: 'blablasport3.jpg',
#   content_type: 'image/jpg'
# )
# image_path = Rails.root.join("app/assets/images/background/blablasport4.jpg")
# cloudinary_image = Cloudinary::Uploader.upload(image_path)
# picture9 = ActiveStorage::Blob.create_and_upload!(
#   io: URI.open(cloudinary_image['secure_url']),
#   filename: 'blablasport4.jpg',
#   content_type: 'image/jpg'
# )
# image_path = Rails.root.join("app/assets/images/background/blablasport5.jpg")
# cloudinary_image = Cloudinary::Uploader.upload(image_path)
# picture10 = ActiveStorage::Blob.create_and_upload!(
#   io: URI.open(cloudinary_image['secure_url']),
#   filename: 'blablasport5.jpg',
#   content_type: 'image/jpg'
# )
# image_path = Rails.root.join("app/assets/images/background/blablasport7.jpg")
# cloudinary_image = Cloudinary::Uploader.upload(image_path)
# picture12 = ActiveStorage::Blob.create_and_upload!(
#   io: URI.open(cloudinary_image['secure_url']),
#   filename: 'blablasport7.jpg',
#   content_type: 'image/jpg'
# )
# image_path = Rails.root.join("app/assets/images/background/blablasport8.jpg")
# cloudinary_image = Cloudinary::Uploader.upload(image_path)
# picture13 = ActiveStorage::Blob.create_and_upload!(
#   io: URI.open(cloudinary_image['secure_url']),
#   filename: 'blablasport8.jpg',
#   content_type: 'image/jpg'
# )
# image_path = Rails.root.join("app/assets/images/background/blablasport9.jpeg")
# cloudinary_image = Cloudinary::Uploader.upload(image_path)
# picture14 = ActiveStorage::Blob.create_and_upload!(
#   io: URI.open(cloudinary_image['secure_url']),
#   filename: 'blablasport9.jpeg',
#   content_type: 'image/jpeg'
# )
# image_path = Rails.root.join("app/assets/images/background/blablasport10.png")
# cloudinary_image = Cloudinary::Uploader.upload(image_path)
# picture15 = ActiveStorage::Blob.create_and_upload!(
#   io: URI.open(cloudinary_image['secure_url']),
#   filename: 'blablasport10.png',
#   content_type: 'image/png'
# )
# image_path = Rails.root.join("app/assets/images/background/blablasport11.jpg")
# cloudinary_image = Cloudinary::Uploader.upload(image_path)
# picture16 = ActiveStorage::Blob.create_and_upload!(
#   io: URI.open(cloudinary_image['secure_url']),
#   filename: 'blablasport11.jpg',
#   content_type: 'image/jpg'
# )
# image_path = Rails.root.join("app/assets/images/background/blablasport12.jpg")
# cloudinary_image = Cloudinary::Uploader.upload(image_path)
# picture17 = ActiveStorage::Blob.create_and_upload!(
#   io: URI.open(cloudinary_image['secure_url']),
#   filename: 'blablasport12.jpg',
#   content_type: 'image/jpg'
# )
# image_path = Rails.root.join("app/assets/images/background/blablasport13.jpg")
# cloudinary_image = Cloudinary::Uploader.upload(image_path)
# picture18 = ActiveStorage::Blob.create_and_upload!(
#   io: URI.open(cloudinary_image['secure_url']),
#   filename: 'blablaspor13.jpg',
#   content_type: 'image/jpg'
# )
# image_path = Rails.root.join("app/assets/images/background/blablasport14.jpg")
# cloudinary_image = Cloudinary::Uploader.upload(image_path)
# picture19 = ActiveStorage::Blob.create_and_upload!(
#   io: URI.open(cloudinary_image['secure_url']),
#   filename: 'blablasport14.jpg',
#   content_type: 'image/jpg'
# )
# image_path = Rails.root.join("app/assets/images/background/blablasport15.jpg")
# cloudinary_image = Cloudinary::Uploader.upload(image_path)
# picture20 = ActiveStorage::Blob.create_and_upload!(
#   io: URI.open(cloudinary_image['secure_url']),
#   filename: 'blablasport15.jpg',
#   content_type: 'image/jpg'
# )
# image_path = Rails.root.join("app/assets/images/background/blablasport16.jpg")
# cloudinary_image = Cloudinary::Uploader.upload(image_path)
# picture21 = ActiveStorage::Blob.create_and_upload!(
#   io: URI.open(cloudinary_image['secure_url']),
#   filename: 'blablasport16.jpg',
#   content_type: 'image/jpg'
# )
# image_path = Rails.root.join("app/assets/images/background/blablasport17.jpg")
# cloudinary_image = Cloudinary::Uploader.upload(image_path)
# picture22 = ActiveStorage::Blob.create_and_upload!(
#   io: URI.open(cloudinary_image['secure_url']),
#   filename: 'blablasport17.jpg',
#   content_type: 'image/jpg'
# )
# image_path = Rails.root.join("app/assets/images/background/blablasport18.png")
# cloudinary_image = Cloudinary::Uploader.upload(image_path)
# picture23 = ActiveStorage::Blob.create_and_upload!(
#   io: URI.open(cloudinary_image['secure_url']),
#   filename: 'blablasport18.png',
#   content_type: 'image/png'
# )
# # image_path = Rails.root.join("app/assets/images/background/blablasport19.png")
# # cloudinary_image = Cloudinary::Uploader.upload(image_path)
# # picture24 = ActiveStorage::Blob.create_and_upload!(
# #   io: URI.open(cloudinary_image['secure_url']),
# #   filename: 'blablasport19.png',
# #   content_type: 'image/png'
# # )
# image_path = Rails.root.join("app/assets/images/background/blablasport20.jpg")
# cloudinary_image = Cloudinary::Uploader.upload(image_path)
# picture25 = ActiveStorage::Blob.create_and_upload!(
#   io: URI.open(cloudinary_image['secure_url']),
#   filename: 'blablasport20.jpg',
#   content_type: 'image/jpg'
# )
# image_path = Rails.root.join("app/assets/images/background/blablasport21.jpg")
# cloudinary_image = Cloudinary::Uploader.upload(image_path)
# picture26 = ActiveStorage::Blob.create_and_upload!(
#   io: URI.open(cloudinary_image['secure_url']),
#   filename: 'blablasport21.jpg',
#   content_type: 'image/jpg'
# )
# image_path = Rails.root.join("app/assets/images/background/blablasport22.jpg")
# cloudinary_image = Cloudinary::Uploader.upload(image_path)
# picture27 = ActiveStorage::Blob.create_and_upload!(
#   io: URI.open(cloudinary_image['secure_url']),
#   filename: 'blablasport22.jpg',
#   content_type: 'image/jpg'
# )
# image_path = Rails.root.join("app/assets/images/background/blablasport23.jpeg")
# cloudinary_image = Cloudinary::Uploader.upload(image_path)
# picture28 = ActiveStorage::Blob.create_and_upload!(
#   io: URI.open(cloudinary_image['secure_url']),
#   filename: 'blablasport23.jpeg',
#   content_type: 'image/jpeg'
# )
# image_path = Rails.root.join("app/assets/images/background/blablasport24.jpeg")
# cloudinary_image = Cloudinary::Uploader.upload(image_path)
# picture34 = ActiveStorage::Blob.create_and_upload!(
#   io: URI.open(cloudinary_image['secure_url']),
#   filename: 'blablasport24.jpeg',
#   content_type: 'image/jpeg'
# )
# image_path = Rails.root.join("app/assets/images/background/blablasport25.jpg")
# cloudinary_image = Cloudinary::Uploader.upload(image_path)
# picture30 = ActiveStorage::Blob.create_and_upload!(
#   io: URI.open(cloudinary_image['secure_url']),
#   filename: 'blablasport25.jpg',
#   content_type: 'image/jpg'
# )
# image_path = Rails.root.join("app/assets/images/background/blablasport26.jpg")
# cloudinary_image = Cloudinary::Uploader.upload(image_path)
# picture31 = ActiveStorage::Blob.create_and_upload!(
#   io: URI.open(cloudinary_image['secure_url']),
#   filename: 'blablasport26.jpg',
#   content_type: 'image/jpg'
# )
# image_path = Rails.root.join("app/assets/images/background/blablasport27.jpg")
# cloudinary_image = Cloudinary::Uploader.upload(image_path)
# picture32 = ActiveStorage::Blob.create_and_upload!(
#   io: URI.open(cloudinary_image['secure_url']),
#   filename: 'blablasport27.jpg',
#   content_type: 'image/jpg'
# )
# image_path = Rails.root.join("app/assets/images/background/blablasport28.jpg")
# cloudinary_image = Cloudinary::Uploader.upload(image_path)
# picture33 = ActiveStorage::Blob.create_and_upload!(
#   io: URI.open(cloudinary_image['secure_url']),
#   filename: 'blablasport28.jpg',
#   content_type: 'image/jpg'
# )
# image_path = Rails.root.join("app/assets/images/background/blablasport29.png")
# cloudinary_image = Cloudinary::Uploader.upload(image_path)
# picture35 = ActiveStorage::Blob.create_and_upload!(
#   io: URI.open(cloudinary_image['secure_url']),
#   filename: 'blablasport29.png',
#   content_type: 'image/jpg'
# )
# image_path = Rails.root.join("app/assets/images/background/blablasportlongorange.jpg")
# cloudinary_image = Cloudinary::Uploader.upload(image_path)
# picture36 = ActiveStorage::Blob.create_and_upload!(
#   io: URI.open(cloudinary_image['secure_url']),
#   filename: 'blablasportlongorange.jpg',
#   content_type: 'image/jpg'
# )
# image_path = Rails.root.join("app/assets/images/background/blablasportlongorangefort.jpg")
# cloudinary_image = Cloudinary::Uploader.upload(image_path)
# picture37 = ActiveStorage::Blob.create_and_upload!(
#   io: URI.open(cloudinary_image['secure_url']),
#   filename: 'blablasportlongorangefort.jpg',
#   content_type: 'image/jpg'
# )
# image_path = Rails.root.join("app/assets/images/background/blablasportlongrouge.jpg")
# cloudinary_image = Cloudinary::Uploader.upload(image_path)
# picture38 = ActiveStorage::Blob.create_and_upload!(
#   io: URI.open(cloudinary_image['secure_url']),
#   filename: 'blablasportlongrouge.jpg',
#   content_type: 'image/jpg'
# # )
# image_path = Rails.root.join("app/assets/images/background/blablasportcourtorangefort.jpg")
# cloudinary_image = Cloudinary::Uploader.upload(image_path)
# picture39 = ActiveStorage::Blob.create_and_upload!(
#   io: URI.open(cloudinary_image['secure_url']),
#   filename: 'blablasportcourtorangefort.jpg',
#   content_type: 'image/jpg'
# )
# # )
# image_path = Rails.root.join("app/assets/images/background/pelouse.jpg")
# cloudinary_image = Cloudinary::Uploader.upload(image_path)
# picture40 = ActiveStorage::Blob.create_and_upload!(
#   io: URI.open(cloudinary_image['secure_url']),
#   filename: 'pelouse.jpg',
#   content_type: 'image/jpg'
# )
# puts "images uploaded..."
