# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'
OpenURI::Buffer.send :remove_const, 'StringMax' if OpenURI::Buffer.const_defined?('StringMax')
OpenURI::Buffer.const_set 'StringMax', 0

puts"destroying the seeds..."
Project.destroy_all
puts"seeds destroyed. Creating new seeds..."

mr_cocktail_photo = "https://res.cloudinary.com/dn2gpbtwl/image/upload/3glqqj878zsoxh1toekwr15d21xv"
file = URI.open(mr_cocktail_photo)
filename = File.basename(URI.parse(mr_cocktail_photo).path)
mr_cocktail_project = Project.new(name: "Toros Cocktails", description: 'Esse foi meu primeiro projeto solo criado com Ruby on Rails, ele fornece uma lista de ingredientes e permite que o usuário crie seu próprio coquetel.', url: "https://toros-cocktail.herokuapp.com")
mr_cocktail_project.photo.attach(io: file, filename: filename)
mr_cocktail_project.save

puts"seeds created! Done!"