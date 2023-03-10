p "Cleaning database..."
Message.destroy_all
Review.destroy_all
Chatroom.destroy_all
Booking.destroy_all
Event.destroy_all
Sport.destroy_all
AdminUser.destroy_all
User.destroy_all
PublicActivity::Activity.destroy_all

p 'Database cleaned'

p "Creating Users..."
@user1 = User.create!(email: "romainweyrich90@gmail.com", first_name: "Romain", last_name: "Weyrich", password: "123456", password_confirmation: "123456", age: "32", phone_number: "0606060606", sex: "Homme", address: "rue de la Paix", zip_code: "1018", city: "Lausanne", user_description: "fan d'aquagym, pilate, fitness")
@user2 = User.create!(email: "alx.dionisio@gmail.com", first_name: "Alex", last_name: "Dionisio", password: "123456", password_confirmation: "123456", age: "32", phone_number: "0606060607", sex:"Homme", address: "rue Victor Hugo", zip_code: "13005", city: "Marseille", user_description: "fan de tennis")
@user3 = User.create!(email: "fredericjeanne@gmail.com", first_name: "Fred", last_name: "Jeanne", password: "123456", password_confirmation: "123456", age: "40", phone_number: "0606060608", sex:"Homme", address: "rue Romain Weyrich", zip_code: "40100", city: "Dax", user_description: "fan de badminton")
@user4 = User.create!(email: "test4@test.com", first_name: "Jeff", last_name: "Tuche", password: "123456", password_confirmation: "123456", age: "42", phone_number: "0606060609", sex:"Femme", address: "rue Alex Dionisio", zip_code: "67000", city: "Strasbourg", user_description: "fan de basket")
@user5 = User.create!(email: "test5@test.com", first_name: "Mickey", last_name: "Mouse", password: "123456", password_confirmation: "123456", age: "95", phone_number: "0606060610", sex: "Femme", address: "rue de la Paix", zip_code: "75001", city: "Paris", user_description: "fan de foot")
@user6 = User.create!(email: "test6@test.com", first_name: "François", last_name: "Pignon", password: "123456", password_confirmation: "123456", age: "60", phone_number: "0606060611", sex:"Homme", address: "rue Victor Hugo", zip_code: "1018", city: "Lausanne", user_description: "fan de tennis")
@user7 = User.create!(email: "test7@test.com", first_name: "Kylian", last_name: "Mbappé", password: "123456", password_confirmation: "123456", age: "23", phone_number: "0606060612", sex:"Homme", address: "rue Romain Weyrich", zip_code: "13005", city: "Paris", user_description: "fan de badminton")
@user8 = User.create!(email: "test8@test.com", first_name: "Scarlett", last_name: "Johansson", password: "123456", password_confirmation: "123456", age: "30", phone_number: "0606060613", sex:"Femme", address: "rue Alex Dionisio", zip_code: "67000", city: "Strasbourg", user_description: "fan de basket")
@user9 = User.create!(email: "test9@test.com", first_name: "James", last_name: "Bond", password: "123456", password_confirmation: "123456", age: "35", phone_number: "0606060614", sex:"Homme", address: "rue ", zip_code: "14000", city: "Caen", user_description: "fan d'espionnage")
@user10 = User.create!(email: "test10@test.com", first_name: "Brigitte", last_name: "Macron", password: "123456", password_confirmation: "123456", age: "71", phone_number: "0606060615", sex:"Femme", address: "rue ", zip_code: "35000", city: "Rennes", user_description: "fan d'Ultimate")
@user11 = User.create!(email: "test11@test.com", first_name: "Guy", last_name: "Theube", password: "123456", password_confirmation: "123456", age: "22", phone_number: "0606060616", sex:"Homme", address: "rue ", zip_code: "44000", city: "Nantes", user_description: "fan de wagon")
p "#{User.count} users created"

AdminUser.create!(email: 'romainweyrich90@gmail.com',password: "admini", password_confirmation: "admini")
AdminUser.create!(email: 'alx.dionisio@gmail.com', password: "admini", password_confirmation: "admini")
AdminUser.create!(email: 'fredericjeanne@gmail.com', password: "admini", password_confirmation: "admini")
p "3 administators created"

p "Creating Sports..."
@sport1 = Sport.create!(sport_name: "Football")
@sport2 = Sport.create!(sport_name: "Tennis")
@sport3 = Sport.create!(sport_name: "Badminton")
@sport4 = Sport.create!(sport_name: "Basketball")
@sport5 = Sport.create!(sport_name: "Volleyball")
@sport6 = Sport.create!(sport_name: "Handball")
@sport7 = Sport.create!(sport_name: "Rugby")
@sport8 = Sport.create!(sport_name: "Baseball")
@sport9 = Sport.create!(sport_name: "Cricket")
@sport10 = Sport.create!(sport_name: "Golf")
@sport11 = Sport.create!(sport_name: "Hockey")
@sport12 = Sport.create!(sport_name: "Judo")
@sport13 = Sport.create!(sport_name: "Natation")
@sport14 = Sport.create!(sport_name: "Tir à l'arc")
@sport15 = Sport.create!(sport_name: "Tir")
@sport16 = Sport.create!(sport_name: "Tennis de table")
@sport17 = Sport.create!(sport_name: "VTT")
@sport18 = Sport.create!(sport_name: "Ultimate")
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
p "#{Sport.count} Sports created"

p "Creating Events..."
event1 = Event.create!(gratuit: true, description: "Nouveau dans la région, je cherche des joueurs pour continuer à pratiquer ce sport que j'adore !", date: "2023-02-08", time: "10:00:00", price: "0", address: "rue Oberkampf, Paris, France", level: "Intermédiaire", players_number: "8", duration: "80 min", user: @user1, sport: @sport1, age_mini: "7", age_maxi: "")
event2 = Event.create!(gratuit: true, description: "Suite à des désistements, je cherche de nouvelles personnes", date: "2023-02-09", time: "11:00:00", price: "5", address: "Route des Plaines du Loup 7, Lausanne, Suisse", level: "Confirmé", players_number: "3", duration: "120 min", user: @user2, sport: @sport2, age_mini: "16", age_maxi: "")
event3 = Event.create!(gratuit: true, description: "J'organise cette partie tous les semaines, bienvenue aux nouveaux !", date: "2023-02-10", time: "12:00:00", price: "0", address: "3 Bd Michelet, Marseille, France", level: "Confirmé", players_number: "1", duration: "60 min", user: @user3, sport: @sport39, age_mini: "18", age_maxi: "")
event4 = Event.create!(gratuit: true, description: "Bonne ambiance garantie !", date: "2023-02-11", time: "13:00:00", price: "5", address: "12 Rue de l'Extenwoerth, Strasbourg, France", level: "Pour tous", players_number: "6", duration: "60 min", user: @user4, sport: @sport4, age_mini: "7", age_maxi: "")
event5 = Event.create!(gratuit: true, description: "Nouveau dans la région, je cherche des joueurs pour continuer à pratiquer ce sport que j'adore !", date: "2023-02-12", time: "10:00:00", price: "0", address: "35 Rue du Chevalier de la Barre, Paris, France", level: "Intermédiaire", players_number: "8", duration: "80 min", user: @user1, sport: @sport4, age_mini: "", age_maxi: "")
event6 = Event.create!(gratuit: true, description: "Suite à des désistements, je cherche de nouvelles personnes", date: "2023-03-12", time: "11:00:00", price: "5", address: "Allée des Evadés, Peyrehorade, France", level: "Pour tous", players_number: "3", duration: "120 min", user: @user2, sport: @sport3, age_mini: "18", age_maxi: "30")
event7 = Event.create!(gratuit: true, description: "J'organise cette partie tous les semaines, bienvenue aux nouveaux !", date: "2023-03-13", time: "12:00:00", price: "0", address: "Quatre Chemins de Montolivet, Marseille, France", level: "Confirmé", players_number: "2", duration: "60 min", user: @user3, sport: @sport17)
event8 = Event.create!(gratuit: true, description: "Bonne ambiance garantie !", date: "2023-03-14", time: "13:00:00", price: "5", address: "Petite Rue d'Austerlitz, Strasbourg, France", level: "Pour tous", players_number: "6", duration: "60 min", user: @user4, sport: @sport1, age_mini: "", age_maxi: "40")
event9 = Event.create!(gratuit: true, description: "Nouveau dans la région, je cherche des joueurs pour continuer à pratiquer ce sport que j'adore !", date: "2023-03-15", time: "10:00:00", price: "0", address: "rue Danielle Casanova, Saint-Denis, France", level: "Intermédiaire", players_number: "8", duration: "80 min", user: @user1, sport: @sport30, age_mini: "16", age_maxi: "25")
event10 = Event.create!(gratuit: true, description: "Suite à des désistements, je cherche de nouvelles personnes", date: "2023-03-16", time: "11:00:00", price: "5", address: "Avenue 8 Mai 1945, Bayonne, France", level: "Intermédiaire", players_number: "3", duration: "120 min", user: @user2, sport: @sport20, age_mini: "", age_maxi: "")
event11 = Event.create!(gratuit: true, description: "J'organise cette partie tous les semaines, bienvenue aux nouveaux !", date: "2023-03-17", time: "12:00:00", price: "0", address: "225 avenue Ibrahim Ali, Marseille, France", level: "Confirmé", players_number: "4", duration: "60 min", user: @user3, sport: @sport31, age_mini: "", age_maxi: "50")
event12 = Event.create!(gratuit: true, description: "Bonne ambiance garantie !", date: "2023-03-18", time: "13:00:00", price: "5", address: "2 rue de Zurich, Colmar, France", level: "Pour tous", players_number: "3", duration: "60 min", user: @user4, sport: @sport10, age_mini: "", age_maxi: "")
event13 = Event.create!(gratuit: true, description: "Tous les lundis !", date: "2023-03-18", time: "10:00:00", price: "0", address: "route de trompe, Peyrehorade, France", level: "Intermédiaire", players_number: "2", duration: "80 min", user: @user5, sport: @sport32, age_mini: "16", age_maxi: "50")
event14 = Event.create!(gratuit: true, description: "Nouveau dans la région, je cherche des joueurs pour continuer à pratiquer ce sport que j'adore !", date: "2023-03-18", time: "11:00:00", price: "5", address: "Place de la Concorde, Paris, France", level: "Confirmé", players_number: "8", duration: "120 min", user: @user6, sport: @sport34, age_mini: "", age_maxi: "")
event15 = Event.create!(gratuit: true, description: "Suite à des désistements, je cherche de nouvelles personnes", date: "2023-03-19", time: "12:00:00", price: "0", address: "Champs Elysées, Paris, France", level: "Confirmé", players_number: "1", duration: "60 min", user: @user7, sport: @sport16, age_mini: "", age_maxi: "45")
event16 = Event.create!(gratuit: true, description: "Bonne ambiance garantie !", date: "2023-03-20", time: "13:00:00", price: "5", address: "197 ancienne route du Grès, Orange, France", level: "Pour tous", players_number: "4", duration: "60 min", user: @user8, sport: @sport19, age_mini: "3", age_maxi: "")
event17 = Event.create!(gratuit: true, description: "tous les mardis et jeudis !", date: "2023-03-15", time: "10:00:00", price: "0", address: "rue de la République, Marseille, France", level: "Intermédiaire", players_number: "2", duration: "80 min", user: @user9, sport: @sport31, age_mini: "16", age_maxi: "50")
event18 = Event.create!(gratuit: true, description: "Nouveau dans la région, je cherche des joueurs pour continuer à pratiquer ce sport que j'adore !", date: "2023-03-19", time: "11:00:00", price: "5", address: "rue de la République, Marseille, France", level: "Confirmé", players_number: "1", duration: "120 min", user: @user10, sport: @sport33, age_mini: "", age_maxi: "")
event19 = Event.create!(gratuit: true, description: "Tous les lundis !", date: "2023-03-20", time: "12:00:00", price: "0", address: "Allée Arago, Bordeaux, France", level: "Confirmé", players_number: "1", duration: "60 min", user: @user11, sport: @sport22, age_mini: "12", age_maxi: "45")
event20 = Event.create!(gratuit: true, description: "tous les mardis et jeudis !", date: "2023-03-20", time: "13:00:00", price: "5", address: "Rue Albert de Mun, Caen, France", level: "Pour tous", players_number: "4", duration: "60 min", user: @user1, sport: @sport23, age_mini: "18", age_maxi: "")
event21 = Event.create!(gratuit: true, description: "Nouveau dans la région, je cherche des joueurs pour continuer à pratiquer ce sport que j'adore !", date: "2023-03-20", time: "10:00:00", price: "0", address: "rue du 14 juillet, Nantes, France", level: "Intermédiaire", players_number: "2", duration: "80 min", user: @user2, sport: @sport24, age_mini: "16", age_maxi: "")
event22 = Event.create!(gratuit: true, description: "Suite à des désistements, je cherche de nouvelles personnes", date: "2023-03-21", time: "11:00:00", price: "5", address: "Avenue de l'Architecte Cordonnier, Lille, France", level: "Confirmé", players_number: "1", duration: "120 min", user: @user3, sport: @sport25, age_mini: "", age_maxi: "")
event23 = Event.create!(gratuit: true, description: "tous les mardis et jeudis !", date: "2023-03-21", time: "12:00:00", price: "0", address: "Allée Nadault de Buffon, Rennes, France", level: "Confirmé", players_number: "1", duration: "60 min", user: @user4, sport: @sport26, age_mini: "", age_maxi: "")
event24 = Event.create!(gratuit: true, description: "Nouveau dans la région, je cherche des joueurs pour continuer à pratiquer ce sport que j'adore !", date: "2023-03-21", time: "13:00:00", price: "5", address: "Place du 11 Novembre 1918, Lyon, France", level: "Pour tous", players_number: "2", duration: "60 min", user: @user5, sport: @sport27, age_mini: "", age_maxi: "")
event25 = Event.create!(gratuit: true, description: "Tous les lundis !", date: "2023-03-22", time: "10:00:00", price: "0", address: "Rue de la halle, Bourges, France", level: "Pour tous", players_number: "9", duration: "60 min", user: @user8, sport: @sport1, age_mini: "16", age_maxi: "")
event26 = Event.create!(gratuit: true, description: "Nouveau dans la région, je cherche des joueurs pour continuer à pratiquer ce sport que j'adore !", date: "2023-03-22", time: "10:00:00", price: "5", address: "Allée du Pont de la Sarre, Clermont-Ferrand, France", level: "Pour tous", players_number: "9", duration: "60 min", user: @user9, sport: @sport1, age_mini: "16", age_maxi: "")
event27 = Event.create!(gratuit: true, description: "Bonne ambiance garantie !", date: "2023-03-22", time: "10:00:00", price: "0", address: "Place du Capitole, Toulouse, France", level: "Pour tous", players_number: "9", duration: "60 min", user: @user10, sport: @sport1, age_mini: "16", age_maxi: "")
event28 = Event.create!(gratuit: true, description: "tous les mardis et jeudis !", date: "2023-03-23", time: "10:00:00", price: "5", address: "Rue de l'Abbé Breuil, Perpignan, France", level: "Pour tous", players_number: "9", duration: "60 min", user: @user11, sport: @sport1, age_mini: "16", age_maxi: "")
event29 = Event.create!(gratuit: true, description: "Nouveau dans la région, je cherche des joueurs pour continuer à pratiquer ce sport que j'adore !", date: "2023-03-23", time: "10:00:00", price: "0", address: "52 Rue Verrerie, Dijon, France", level: "Pour tous", players_number: "9", duration: "60 min", user: @user7, sport: @sport1, age_mini: "16", age_maxi: "")
event30 = Event.create!(gratuit: true, description: "Tous les lundis !", date: "2023-03-23", time: "10:00:00", price: "5", address: "192 Grand'Rue, Poitiers, France", level: "Pour tous", players_number: "9", duration: "60 min", user: @user6, sport: @sport1, age_mini: "16", age_maxi: "")
p "#{Event.count} Events created"

p "Creating chatrooms..."
chatroom1 = Chatroom.create!(event_id: event1.id)
chatroom2 = Chatroom.create!(event_id: event2.id)
chatroom3 = Chatroom.create!(event_id: event3.id)
chatroom4 = Chatroom.create!(event_id: event4.id)
chatroom5 = Chatroom.create!(event_id: event5.id)
chatroom6 = Chatroom.create!(event_id: event6.id)
chatroom7 = Chatroom.create!(event_id: event7.id)
chatroom8 = Chatroom.create!(event_id: event8.id)
chatroom9 = Chatroom.create!(event_id: event9.id)
chatroom10 = Chatroom.create!(event_id: event10.id)
chatroom11 = Chatroom.create!(event_id: event11.id)
chatroom12 = Chatroom.create!(event_id: event12.id)
chatroom13 = Chatroom.create!(event_id: event13.id)
chatroom14 = Chatroom.create!(event_id: event14.id)
chatroom15 = Chatroom.create!(event_id: event15.id)
chatroom16 = Chatroom.create!(event_id: event16.id)
chatroom17 = Chatroom.create!(event_id: event17.id)
chatroom18 = Chatroom.create!(event_id: event18.id)
chatroom19 = Chatroom.create!(event_id: event19.id)
chatroom20 = Chatroom.create!(event_id: event20.id)
chatroom21 = Chatroom.create!(event_id: event21.id)
chatroom22 = Chatroom.create!(event_id: event22.id)
chatroom23 = Chatroom.create!(event_id: event23.id)
chatroom24 = Chatroom.create!(event_id: event24.id)
chatroom25 = Chatroom.create!(event_id: event25.id)
chatroom26 = Chatroom.create!(event_id: event26.id)
chatroom27 = Chatroom.create!(event_id: event27.id)
chatroom28 = Chatroom.create!(event_id: event28.id)
chatroom29 = Chatroom.create!(event_id: event29.id)
chatroom30 = Chatroom.create!(event_id: event30.id)
p "#{Chatroom.count} Chatrooms created"

p 'Creating bookings...'
Booking.create!(event_id: event1.id, user_id: @user6.id, booking_status: "Acceptée")
Booking.create!(event_id: event1.id, user_id: @user2.id, booking_status: "Acceptée")
Booking.create!(event_id: event1.id, user_id: @user3.id, booking_status: "Refusée")
Booking.create!(event_id: event1.id, user_id: @user4.id, booking_status: "Acceptée")
Booking.create!(event_id: event1.id, user_id: @user5.id, booking_status: "Acceptée")
Booking.create!(event_id: event1.id, user_id: @user7.id, booking_status: "Acceptée")
Booking.create!(event_id: event1.id, user_id: @user8.id, booking_status: "Acceptée")
Booking.create!(event_id: event1.id, user_id: @user9.id, booking_status: "Acceptée")
Booking.create!(event_id: event1.id, user_id: @user10.id, booking_status: "Acceptée")

Booking.create!(event_id: event2.id, user_id: @user5.id, booking_status: "Acceptée")
Booking.create!(event_id: event2.id, user_id: @user3.id, booking_status: "Acceptée")
Booking.create!(event_id: event2.id, user_id: @user4.id, booking_status: "Acceptée")
Booking.create!(event_id: event2.id, user_id: @user1.id, booking_status: "Refusée")

Booking.create!(event_id: event3.id, user_id: @user1.id, booking_status: "Acceptée")
Booking.create!(event_id: event3.id, user_id: @user2.id, booking_status: "Refusée")

Booking.create!(event_id: event4.id, user_id: @user1.id, booking_status: "Acceptée")
Booking.create!(event_id: event4.id, user_id: @user2.id, booking_status: "Acceptée")
Booking.create!(event_id: event4.id, user_id: @user3.id, booking_status: "Refusée")
Booking.create!(event_id: event4.id, user_id: @user7.id, booking_status: "Acceptée")
Booking.create!(event_id: event4.id, user_id: @user5.id, booking_status: "Acceptée")
Booking.create!(event_id: event4.id, user_id: @user6.id, booking_status: "Acceptée")
Booking.create!(event_id: event4.id, user_id: @user8.id, booking_status: "Acceptée")

Booking.create!(event_id: event5.id, user_id: @user3.id, booking_status: "Acceptée")
Booking.create!(event_id: event5.id, user_id: @user4.id, booking_status: "Refusée")
Booking.create!(event_id: event5.id, user_id: @user1.id, booking_status: "Acceptée")
Booking.create!(event_id: event5.id, user_id: @user6.id, booking_status: "Acceptée")
Booking.create!(event_id: event5.id, user_id: @user7.id, booking_status: "Acceptée")
Booking.create!(event_id: event5.id, user_id: @user8.id, booking_status: "Acceptée")
Booking.create!(event_id: event5.id, user_id: @user9.id, booking_status: "Acceptée")
Booking.create!(event_id: event5.id, user_id: @user10.id, booking_status: "Acceptée")
Booking.create!(event_id: event5.id, user_id: @user2.id, booking_status: "Acceptée")

Booking.create!(event_id: event6.id, user_id: @user1.id, booking_status: "Acceptée")
Booking.create!(event_id: event7.id, user_id: @user2.id, booking_status: "Acceptée")
Booking.create!(event_id: event8.id, user_id: @user3.id, booking_status: "Acceptée")
Booking.create!(event_id: event9.id, user_id: @user4.id, booking_status: "Acceptée")
Booking.create!(event_id: event10.id, user_id: @user5.id, booking_status: "Refusée")
Booking.create!(event_id: event11.id, user_id: @user6.id, booking_status: "Acceptée")
Booking.create!(event_id: event11.id, user_id: @user1.id, booking_status: "Acceptée")
Booking.create!(event_id: event11.id, user_id: @user2.id, booking_status: "Acceptée")
Booking.create!(event_id: event11.id, user_id: @user4.id, booking_status: "Acceptée")
Booking.create!(event_id: event12.id, user_id: @user7.id, booking_status: "Acceptée")
Booking.create!(event_id: event13.id, user_id: @user8.id, booking_status: "Acceptée")
Booking.create!(event_id: event14.id, user_id: @user9.id, booking_status: "Acceptée")
Booking.create!(event_id: event15.id, user_id: @user10.id, booking_status: "Acceptée")
Booking.create!(event_id: event16.id, user_id: @user11.id, booking_status: "Acceptée")
Booking.create!(event_id: event6.id, user_id: @user2.id, booking_status: "En attente de validation")
Booking.create!(event_id: event7.id, user_id: @user3.id, booking_status: "En attente de validation")
Booking.create!(event_id: event8.id, user_id: @user4.id, booking_status: "En attente de validation")
Booking.create!(event_id: event9.id, user_id: @user5.id, booking_status: "En attente de validation")
Booking.create!(event_id: event10.id, user_id: @user6.id, booking_status: "En attente de validation")
Booking.create!(event_id: event11.id, user_id: @user7.id, booking_status: "En attente de validation")
Booking.create!(event_id: event12.id, user_id: @user8.id, booking_status: "En attente de validation")
Booking.create!(event_id: event13.id, user_id: @user9.id, booking_status: "En attente de validation")
Booking.create!(event_id: event14.id, user_id: @user10.id, booking_status: "En attente de validation")
Booking.create!(event_id: event15.id, user_id: @user11.id, booking_status: "En attente de validation")
p "#{Booking.count} bookings created "

p "Creating Reviews..."
@review1 = Review.create!(rating: 5, comment: "Superbe expérience, je recommande !", user_id: @user2.id, event_id: event1.id)
@review2 = Review.create!(rating: 4, comment: "Très bon match, je recommande !", user_id: @user3.id, event_id: event1.id)
@review3 = Review.create!(rating: 4, comment: "Match sympa, je recommande !", user_id: @user4.id, event_id: event1.id)
@review4 = Review.create!(rating: 5, comment: "Super ambiance, je recommande !", user_id: @user5.id, event_id: event1.id)
@review5 = Review.create!(rating: 5, comment: "c'était top, je recommande !", user_id: @user6.id, event_id: event1.id)
@review6 = Review.create!(rating: 5, comment: "Superbe expérience, je recommande !", user_id: @user1.id, event_id: event2.id)
@review7 = Review.create!(rating: 5, comment: "Très bon match, je recommande !", user_id: @user4.id, event_id: event2.id)
@review8 = Review.create!(rating: 1, comment: "Ennuyeux à mourir !", user_id: @user3.id, event_id: event2.id)
@review9 = Review.create!(rating: 3, comment: "Match moyen...", user_id: @user1.id, event_id: event3.id)
@review10 = Review.create!(rating: 2, comment: "Bof...........", user_id: @user6.id, event_id: event4.id)
@review11 = Review.create!(rating: 5, comment: "Incroyable !!!!", user_id: @user7.id, event_id: event4.id)
@review12 = Review.create!(rating: 5, comment: "A refaire !!!!", user_id: @user8.id, event_id: event4.id)
@review13 = Review.create!(rating: 5, comment: "Amazing !!!!!", user_id: @user4.id, event_id: event5.id)
@review14 = Review.create!(rating: 5, comment: "vraiment cool ", user_id: @user6.id, event_id: event5.id)
@review15 = Review.create!(rating: 2, comment: "Peut mieux faire", user_id: @user7.id, event_id: event5.id)
p "#{Review.count} Reviews created"

p "Creating Messages..."
@message1 = Message.create!(content: "Salut, je suis disponible et motivé !", user_id: @user2.id, chatroom_id: chatroom6.id)
@message2 = Message.create!(content: "Cool !", user_id: @user3.id, chatroom_id: chatroom6.id)
@message3 = Message.create!(content: "Yes, moi aussi !!!", user_id: @user4.id, chatroom_id: chatroom6.id)
@message4 = Message.create!(content: "J'amène la boisson !", user_id: @user2.id, chatroom_id: chatroom6.id)
@message4 = Message.create!(content: "Motivé les gars ?", user_id: @user1.id, chatroom_id: chatroom7.id)
@message5 = Message.create!(content: "Grave !", user_id: @user5.id, chatroom_id: chatroom7.id)
@message6 = Message.create!(content: "J'espère que j'arrive pas trop tard !", user_id: @user6.id, chatroom_id: chatroom7.id)
@message7 = Message.create!(content: "c'est tous les mardis et jeudis au pire si tu veux", user_id: @user7.id, chatroom_id: chatroom7.id)
@message8 = Message.create!(content: "Salut, je suis disponible et motivé !", user_id: @user3.id, chatroom_id: chatroom8.id)
@message9 = Message.create!(content: "Cool !", user_id: @user8.id, chatroom_id: chatroom8.id)
@message10 = Message.create!(content: "Yes, moi aussi !!!", user_id: @user9.id, chatroom_id: chatroom8.id)
@message11 = Message.create!(content: "J'amène la boisson !", user_id: @user10.id, chatroom_id: chatroom8.id)
@message12 = Message.create!(content: "Motivé les gars ?", user_id: @user4.id, chatroom_id: chatroom9.id)
@message13 = Message.create!(content: "Grave !", user_id: @user11.id, chatroom_id: chatroom9.id)
@message14 = Message.create!(content: "J'espère que j'arrive pas trop tard !", user_id: @user1.id, chatroom_id: chatroom9.id)
@message15 = Message.create!(content: "c'est tous les mardis et jeudis au pire si tu veux", user_id: @user2.id, chatroom_id: chatroom9.id)
p "Created #{Message.count} messages"

# campnou = Stadium.create!(user_id: @user.id, name: "Camp Nou", location: "Barcelona", energy_class: "C", stadium_description: "zzz", capacity: 99354, price: 49000)
# campnou.pictures.attach(picture1)
# campnou.pictures.attach(picture2)
# campnou.photo.attach(picture36)

# image_path = Rails.root.join("app/assets/images/Blablasport_logo_transparent.png")
# cloudinary_image = Cloudinary::Uploader.upload(image_path)
# picture6 = ActiveStorage::Blob.create_and_upload!(
#   io: URI.open(cloudinary_image['secure_url']),
#   filename: 'blablasport2.png',
#   comment_type: 'image/png'
# )
# image_path = Rails.root.join("app/assets/images/marker2.png")
# cloudinary_image = Cloudinary::Uploader.upload(image_path)
# picture5 = ActiveStorage::Blob.create_and_upload!(
#   io: URI.open(cloudinary_image['secure_url']),
#   filename: 'marker.png',
#   comment_type: 'image/png'
# )
# image_path = Rails.root.join("app/assets/images/logo_split.png")
# cloudinary_image = Cloudinary::Uploader.upload(image_path)
# picture3 = ActiveStorage::Blob.create_and_upload!(
#   io: URI.open(cloudinary_image['secure_url']),
#   filename: 'marker.png',
#   comment_type: 'image/png'
# )
# image_path = Rails.root.join("app/assets/images/ball.png")
# cloudinary_image = Cloudinary::Uploader.upload(image_path)
# picture4 = ActiveStorage::Blob.create_and_upload!(
#   io: URI.open(cloudinary_image['secure_url']),
#   filename: 'marker.png',
#   comment_type: 'image/png'
# )
# image_path = Rails.root.join("app/assets/images/marker3.png")
# cloudinary_image = Cloudinary::Uploader.upload(image_path)
# picture5 = ActiveStorage::Blob.create_and_upload!(
#   io: URI.open(cloudinary_image['secure_url']),
#   filename: 'marker3.png',
#   comment_type: 'image/png'
# # )
# image_path = Rails.root.join("app/assets/images/background/blablasport1.jpg")
# cloudinary_image = Cloudinary::Uploader.upload(image_path)
# picture6 = ActiveStorage::Blob.create_and_upload!(
#   io: URI.open(cloudinary_image['secure_url']),
#   filename: 'blablasport1.jpg',
#   comment_type: 'image/jpg'
# )
# image_path = Rails.root.join("app/assets/images/background/blablasport2.jpg")
# cloudinary_image = Cloudinary::Uploader.upload(image_path)
# picture7 = ActiveStorage::Blob.create_and_upload!(
#   io: URI.open(cloudinary_image['secure_url']),
#   filename: 'blablasport2.jpg',
#   comment_type: 'image/jpg'
# )
# image_path = Rails.root.join("app/assets/images/background/blablasport3.jpg")
# cloudinary_image = Cloudinary::Uploader.upload(image_path)
# picture8 = ActiveStorage::Blob.create_and_upload!(
#   io: URI.open(cloudinary_image['secure_url']),
#   filename: 'blablasport3.jpg',
#   comment_type: 'image/jpg'
# )
# image_path = Rails.root.join("app/assets/images/background/blablasport4.jpg")
# cloudinary_image = Cloudinary::Uploader.upload(image_path)
# picture9 = ActiveStorage::Blob.create_and_upload!(
#   io: URI.open(cloudinary_image['secure_url']),
#   filename: 'blablasport4.jpg',
#   comment_type: 'image/jpg'
# )
# image_path = Rails.root.join("app/assets/images/background/blablasport5.jpg")
# cloudinary_image = Cloudinary::Uploader.upload(image_path)
# picture10 = ActiveStorage::Blob.create_and_upload!(
#   io: URI.open(cloudinary_image['secure_url']),
#   filename: 'blablasport5.jpg',
#   comment_type: 'image/jpg'
# )
# image_path = Rails.root.join("app/assets/images/background/blablasport7.jpg")
# cloudinary_image = Cloudinary::Uploader.upload(image_path)
# picture12 = ActiveStorage::Blob.create_and_upload!(
#   io: URI.open(cloudinary_image['secure_url']),
#   filename: 'blablasport7.jpg',
#   comment_type: 'image/jpg'
# )
# image_path = Rails.root.join("app/assets/images/background/blablasport8.jpg")
# cloudinary_image = Cloudinary::Uploader.upload(image_path)
# picture13 = ActiveStorage::Blob.create_and_upload!(
#   io: URI.open(cloudinary_image['secure_url']),
#   filename: 'blablasport8.jpg',
#   comment_type: 'image/jpg'
# )
# image_path = Rails.root.join("app/assets/images/background/blablasport9.jpeg")
# cloudinary_image = Cloudinary::Uploader.upload(image_path)
# picture14 = ActiveStorage::Blob.create_and_upload!(
#   io: URI.open(cloudinary_image['secure_url']),
#   filename: 'blablasport9.jpeg',
#   comment_type: 'image/jpeg'
# )
# image_path = Rails.root.join("app/assets/images/background/blablasport10.png")
# cloudinary_image = Cloudinary::Uploader.upload(image_path)
# picture15 = ActiveStorage::Blob.create_and_upload!(
#   io: URI.open(cloudinary_image['secure_url']),
#   filename: 'blablasport10.png',
#   comment_type: 'image/png'
# )
# image_path = Rails.root.join("app/assets/images/background/blablasport11.jpg")
# cloudinary_image = Cloudinary::Uploader.upload(image_path)
# picture16 = ActiveStorage::Blob.create_and_upload!(
#   io: URI.open(cloudinary_image['secure_url']),
#   filename: 'blablasport11.jpg',
#   comment_type: 'image/jpg'
# )
# image_path = Rails.root.join("app/assets/images/background/blablasport12.jpg")
# cloudinary_image = Cloudinary::Uploader.upload(image_path)
# picture17 = ActiveStorage::Blob.create_and_upload!(
#   io: URI.open(cloudinary_image['secure_url']),
#   filename: 'blablasport12.jpg',
#   comment_type: 'image/jpg'
# )
# image_path = Rails.root.join("app/assets/images/background/blablasport13.jpg")
# cloudinary_image = Cloudinary::Uploader.upload(image_path)
# picture18 = ActiveStorage::Blob.create_and_upload!(
#   io: URI.open(cloudinary_image['secure_url']),
#   filename: 'blablaspor13.jpg',
#   comment_type: 'image/jpg'
# )
# image_path = Rails.root.join("app/assets/images/background/blablasport14.jpg")
# cloudinary_image = Cloudinary::Uploader.upload(image_path)
# picture19 = ActiveStorage::Blob.create_and_upload!(
#   io: URI.open(cloudinary_image['secure_url']),
#   filename: 'blablasport14.jpg',
#   comment_type: 'image/jpg'
# )
# image_path = Rails.root.join("app/assets/images/background/blablasport15.jpg")
# cloudinary_image = Cloudinary::Uploader.upload(image_path)
# picture20 = ActiveStorage::Blob.create_and_upload!(
#   io: URI.open(cloudinary_image['secure_url']),
#   filename: 'blablasport15.jpg',
#   comment_type: 'image/jpg'
# )
# image_path = Rails.root.join("app/assets/images/background/blablasport16.jpg")
# cloudinary_image = Cloudinary::Uploader.upload(image_path)
# picture21 = ActiveStorage::Blob.create_and_upload!(
#   io: URI.open(cloudinary_image['secure_url']),
#   filename: 'blablasport16.jpg',
#   comment_type: 'image/jpg'
# )
# image_path = Rails.root.join("app/assets/images/background/blablasport17.jpg")
# cloudinary_image = Cloudinary::Uploader.upload(image_path)
# picture22 = ActiveStorage::Blob.create_and_upload!(
#   io: URI.open(cloudinary_image['secure_url']),
#   filename: 'blablasport17.jpg',
#   comment_type: 'image/jpg'
# )
# image_path = Rails.root.join("app/assets/images/background/blablasport18.png")
# cloudinary_image = Cloudinary::Uploader.upload(image_path)
# picture23 = ActiveStorage::Blob.create_and_upload!(
#   io: URI.open(cloudinary_image['secure_url']),
#   filename: 'blablasport18.png',
#   comment_type: 'image/png'
# )
# # image_path = Rails.root.join("app/assets/images/background/blablasport19.png")
# # cloudinary_image = Cloudinary::Uploader.upload(image_path)
# # picture24 = ActiveStorage::Blob.create_and_upload!(
# #   io: URI.open(cloudinary_image['secure_url']),
# #   filename: 'blablasport19.png',
# #   comment_type: 'image/png'
# # )
# image_path = Rails.root.join("app/assets/images/background/blablasport20.jpg")
# cloudinary_image = Cloudinary::Uploader.upload(image_path)
# picture25 = ActiveStorage::Blob.create_and_upload!(
#   io: URI.open(cloudinary_image['secure_url']),
#   filename: 'blablasport20.jpg',
#   comment_type: 'image/jpg'
# )
# image_path = Rails.root.join("app/assets/images/background/blablasport21.jpg")
# cloudinary_image = Cloudinary::Uploader.upload(image_path)
# picture26 = ActiveStorage::Blob.create_and_upload!(
#   io: URI.open(cloudinary_image['secure_url']),
#   filename: 'blablasport21.jpg',
#   comment_type: 'image/jpg'
# )
# image_path = Rails.root.join("app/assets/images/background/blablasport22.jpg")
# cloudinary_image = Cloudinary::Uploader.upload(image_path)
# picture27 = ActiveStorage::Blob.create_and_upload!(
#   io: URI.open(cloudinary_image['secure_url']),
#   filename: 'blablasport22.jpg',
#   comment_type: 'image/jpg'
# )
# image_path = Rails.root.join("app/assets/images/background/blablasport23.jpeg")
# cloudinary_image = Cloudinary::Uploader.upload(image_path)
# picture28 = ActiveStorage::Blob.create_and_upload!(
#   io: URI.open(cloudinary_image['secure_url']),
#   filename: 'blablasport23.jpeg',
#   comment_type: 'image/jpeg'
# )
# image_path = Rails.root.join("app/assets/images/background/blablasport24.jpeg")
# cloudinary_image = Cloudinary::Uploader.upload(image_path)
# picture34 = ActiveStorage::Blob.create_and_upload!(
#   io: URI.open(cloudinary_image['secure_url']),
#   filename: 'blablasport24.jpeg',
#   comment_type: 'image/jpeg'
# )
# image_path = Rails.root.join("app/assets/images/background/blablasport25.jpg")
# cloudinary_image = Cloudinary::Uploader.upload(image_path)
# picture30 = ActiveStorage::Blob.create_and_upload!(
#   io: URI.open(cloudinary_image['secure_url']),
#   filename: 'blablasport25.jpg',
#   comment_type: 'image/jpg'
# )
# image_path = Rails.root.join("app/assets/images/background/blablasport26.jpg")
# cloudinary_image = Cloudinary::Uploader.upload(image_path)
# picture31 = ActiveStorage::Blob.create_and_upload!(
#   io: URI.open(cloudinary_image['secure_url']),
#   filename: 'blablasport26.jpg',
#   comment_type: 'image/jpg'
# )
# image_path = Rails.root.join("app/assets/images/background/blablasport27.jpg")
# cloudinary_image = Cloudinary::Uploader.upload(image_path)
# picture32 = ActiveStorage::Blob.create_and_upload!(
#   io: URI.open(cloudinary_image['secure_url']),
#   filename: 'blablasport27.jpg',
#   comment_type: 'image/jpg'
# )
# image_path = Rails.root.join("app/assets/images/background/blablasport28.jpg")
# cloudinary_image = Cloudinary::Uploader.upload(image_path)
# picture33 = ActiveStorage::Blob.create_and_upload!(
#   io: URI.open(cloudinary_image['secure_url']),
#   filename: 'blablasport28.jpg',
#   comment_type: 'image/jpg'
# )
# image_path = Rails.root.join("app/assets/images/background/blablasport29.png")
# cloudinary_image = Cloudinary::Uploader.upload(image_path)
# picture35 = ActiveStorage::Blob.create_and_upload!(
#   io: URI.open(cloudinary_image['secure_url']),
#   filename: 'blablasport29.png',
#   comment_type: 'image/jpg'
# )
# image_path = Rails.root.join("app/assets/images/background/blablasportlongorange.jpg")
# cloudinary_image = Cloudinary::Uploader.upload(image_path)
# picture36 = ActiveStorage::Blob.create_and_upload!(
#   io: URI.open(cloudinary_image['secure_url']),
#   filename: 'blablasportlongorange.jpg',
#   comment_type: 'image/jpg'
# )
# image_path = Rails.root.join("app/assets/images/background/blablasportlongorangefort.jpg")
# cloudinary_image = Cloudinary::Uploader.upload(image_path)
# picture37 = ActiveStorage::Blob.create_and_upload!(
#   io: URI.open(cloudinary_image['secure_url']),
#   filename: 'blablasportlongorangefort.jpg',
#   comment_type: 'image/jpg'
# )
# image_path = Rails.root.join("app/assets/images/background/blablasportlongrouge.jpg")
# cloudinary_image = Cloudinary::Uploader.upload(image_path)
# picture38 = ActiveStorage::Blob.create_and_upload!(
#   io: URI.open(cloudinary_image['secure_url']),
#   filename: 'blablasportlongrouge.jpg',
#   comment_type: 'image/jpg'
# # )
# image_path = Rails.root.join("app/assets/images/background/blablasportcourtorangefort.jpg")
# cloudinary_image = Cloudinary::Uploader.upload(image_path)
# picture39 = ActiveStorage::Blob.create_and_upload!(
#   io: URI.open(cloudinary_image['secure_url']),
#   filename: 'blablasportcourtorangefort.jpg',
#   comment_type: 'image/jpg'
# )
# # )
# image_path = Rails.root.join("app/assets/images/background/pelouse.jpg")
# cloudinary_image = Cloudinary::Uploader.upload(image_path)
# picture40 = ActiveStorage::Blob.create_and_upload!(
#   io: URI.open(cloudinary_image['secure_url']),
#   filename: 'pelouse.jpg',
#   comment_type: 'image/jpg'
# )
# image_path = Rails.root.join("app/assets/images/background/blablasport30.jpg")
# cloudinary_image = Cloudinary::Uploader.upload(image_path)
# picture41 = ActiveStorage::Blob.create_and_upload!(
#   io: URI.open(cloudinary_image['secure_url']),
#   filename: 'blablasport30.jpg',
#   comment_type: 'image/jpg'
# )
# puts "images uploaded..."
# image_path = Rails.root.join("app/assets/images/cover.png")
# cloudinary_image = Cloudinary::Uploader.upload(image_path)
# picture42 = ActiveStorage::Blob.create_and_upload!(
#   io: URI.open(cloudinary_image['secure_url']),
#   filename: 'cover.png',
#   comment_type: 'image/jpg'
# )
# image_path = Rails.root.join("app/assets/images/favicon.png")
# cloudinary_image = Cloudinary::Uploader.upload(image_path)
# picture43 = ActiveStorage::Blob.create_and_upload!(
#   io: URI.open(cloudinary_image['secure_url']),
#   filename: 'favicon.png',
#   comment_type: 'image/jpg'
# )
# image_path = Rails.root.join("app/assets/images/BlaBlaSport.png")
# cloudinary_image = Cloudinary::Uploader.upload(image_path)
# picture44 = ActiveStorage::Blob.create_and_upload!(
#   io: URI.open(cloudinary_image['secure_url']),
#   filename: 'BlaBlaSport.png',
#   comment_type: 'image/jpg'
# )
