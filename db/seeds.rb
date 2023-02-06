p "Cleaning database..."
User.destroy_all
Event.destroy_all
Sport.destroy_all
p 'Database cleaned'

p "Creating Users..."
@user = User.create!(email: "test@test.com", first_name: "test", last_name: "test", password: "123456", password_confirmation: "123456", age: "18", phone_number: "0606060606", sex: "Homme", address: "rue de la Paix", zip_code: "75001", city: "Paris", user_description: "fan de foot")
@user1 = User.create!(email: "test1@test.com", first_name: "test1", last_name: "test1", password: "123456", password_confirmation: "123456", age: "28", phone_number: "0606060607", sex:"Homme", address: "rue Victor Hugo", zip_code: "1018", city: "Lausanne", user_description: "fan de tennis")
@user2 = User.create!(email: "test2@test.com", first_name: "test2", last_name: "test2", password: "123456", password_confirmation: "123456", age: "38", phone_number: "0606060608", sex:"Homme", address: "rue Romain Weyrich", zip_code: "13005", city: "Marseille", user_description: "fan de badminton")
@user3 = User.create!(email: "test3@test.com", first_name: "test3", last_name: "test3", password: "123456", password_confirmation: "123456", age: "48", phone_number: "0606060609", sex:"Homme", address: "rue Alex Dionisio", zip_code: "67000", city: "Strasbourg", user_description: "fan de basket")
p "4 users created"

p "Creating Sports..."
@sport1 = Sport.create!(sport: "Football")
@sport2 = Sport.create!(sport: "Tennis")
@sport3 = Sport.create!(sport: "Badminton")
@sport4 = Sport.create!(sport: "Basketball")
@sport5 = Sport.create!(sport: "Volleyball")
@sport6 = Sport.create!(sport: "Handball")
@sport7 = Sport.create!(sport: "Rugby")
@sport8 = Sport.create!(sport: "Baseball")
@sport9 = Sport.create!(sport: "Cricket")
@sport10 = Sport.create!(sport: "Golf")
@sport11 = Sport.create!(sport: "Hockey")
@sport12 = Sport.create!(sport: "Judo")
@sport13 = Sport.create!(sport: "Natation")
@sport14 = Sport.create!(sport: "Tir à l'arc")
@sport15 = Sport.create!(sport: "Tir")
@sport16 = Sport.create!(sport: "Tennis de table")
@sport17 = Sport.create!(sport: "Ultimate")
@sport18 = Sport.create!(sport: "VTT")
@sport19 = Sport.create!(sport: "Yoga")
@sport20 = Sport.create!(sport: "Aviron")
@sport21 = Sport.create!(sport: "Athlétisme")
@sport22 = Sport.create!(sport: "Moto cross")
@sport23 = Sport.create!(sport: "Randonnée")
@sport24 = Sport.create!(sport: "Ski")
@sport25 = Sport.create!(sport: "Snowboard")
@sport26 = Sport.create!(sport: "Trekking")
@sport27 = Sport.create!(sport: "Pelote basque")
@sport28 = Sport.create!(sport: "Pétanque")
@sport29 = Sport.create!(sport: "Poker")
@sport30 = Sport.create!(sport: "Billard")
@sport31 = Sport.create!(sport: "Bowling")
@sport32 = Sport.create!(sport: "Curling")
@sport33 = Sport.create!(sport: "Escalade")
@sport34 = Sport.create!(sport: "Football américain")
@sport35 = Sport.create!(sport: "Gymnastique")
@sport36 = Sport.create!(sport: "Haltérophilie")
@sport37 = Sport.create!(sport: "Jeu de paume")
p "37 Sports created"

p "Creating Events..."
Event.create!(title: "5vs5", description: "", date: "2023-02-20", time: "10:00:00", price: "8", address: "rue Oberkampf", city: "Paris", level: "Normal", players_number: "8", duration: "80", user: @user, sport: @sport1)
Event.create!(title: "2vs2 maximum", description: "", date: "2023-02-20", time: "11:00:00", price: "0", address: "Route des Plaines du Loup 7", city: "Lausanne", level: "ATP", players_number: "3", duration: "120", user: @user1, sport: @sport2)
Event.create!(title: " 1vs1 minimum", description: "", date: "2023-02-20", time: "12:00:00", price: "7", address: "3 Bd Michelet", city: "Marseille", level: "Expérimenté", players_number: "1", duration: "60", user: @user2, sport: @sport3)
Event.create!(title: "3vs3 ou plus", description: "", date: "2023-02-20", time: "13:00:00", price: "0", address: "12 Rue de l'Extenwoerth", city: "Strasbourg", level: "Débutant", players_number: "6", duration: "60", user: @user3, sport: @sport4)
Event.create!(title: "4vs4", description: "", date: "2023-02-20", time: "10:00:00", price: "8", address: "rue Oberkampf", city: "Paris", level: "Normal", players_number: "8", duration: "80", user: @user, sport: @sport4)
Event.create!(title: "1vs1 minimum", description: "", date: "2023-02-20", time: "11:00:00", price: "0", address: "Route des Plaines du Loup 7", city: "Lausanne", level: "ATP", players_number: "3", duration: "120", user: @user1, sport: @sport3)
Event.create!(title: " 2vs2 maximum", description: "", date: "2023-02-20", time: "12:00:00", price: "7", address: "3 Bd Michelet", city: "Marseille", level: "Expérimenté", players_number: "1", duration: "60", user: @user2, sport: @sport2)
Event.create!(title: "5vs5", description: "", date: "2023-02-20", time: "13:00:00", price: "0", address: "12 Rue de l'Extenwoerth", city: "Strasbourg", level: "Débutant", players_number: "6", duration: "60", user: @user3, sport: @sport1)
p "8 Events created"

# image_path = Rails.root.join("app/assets/images/stadiums/logo.png")
# cloudinary_image = Cloudinary::Uploader.upload(image_path)
# picture1 = ActiveStorage::Blob.create_and_upload!(
#   io: URI.open(cloudinary_image['secure_url']),
#   filename: 'logo.png',
#   content_type: 'image/png'
# )

# puts "Creating stadiums..."
# campnou = Stadium.create!(user_id: @user.id, name: "Camp Nou", location: "Barcelona", energy_class: "C", stadium_description: "zzz", capacity: 99354, price: 49000)
# campnou.pictures.attach(picture1)
# campnou.pictures.attach(picture2)
# campnou.photo.attach(picture36)
