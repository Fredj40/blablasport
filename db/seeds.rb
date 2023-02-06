
# image_path = Rails.root.join("app/assets/images/stadiums/logo.png")
# cloudinary_image = Cloudinary::Uploader.upload(image_path)
# picture1 = ActiveStorage::Blob.create_and_upload!(
#   io: URI.open(cloudinary_image['secure_url']),
#   filename: 'logo.png',
#   content_type: 'image/png'
# )


p "Cleaning database..."
User.destroy_all
Event.destroy_all
p 'Database cleaned'

@user = User.new(email: "test@test.com", first_name: "test", last_name: "test", password: "123456", password_confirmation: "123456")
@user.save!
p "User created"

# puts "Creating stadiums..."
# campnou = Stadium.create!(user_id: @user.id, name: "Camp Nou", location: "Barcelona", energy_class: "C", stadium_description: "The Camp Nou is the home stadium of FC Barcelona. It is located in the Les Corts district of Barcelona, Catalonia, Spain. It is the largest stadium in Spain and the second largest in Europe, with a seating capacity of 99,354. The stadium is owned by FC Barcelona and was built in 1957. It is the third stadium to be named Camp Nou, after the original one was demolished in 1957 and the second one was renamed Estadi Olímpic Lluís Companys in 1982. The stadium is nicknamed Can Barça, which means Barça's home in Catalan.", capacity: 99354, price: 49000)
# campnou.pictures.attach(picture1)
# campnou.pictures.attach(picture2)
# campnou.photo.attach(picture36)
