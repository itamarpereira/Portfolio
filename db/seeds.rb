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

algolearning_photo = "https://images.unsplash.com/photo-1580894906475-403276d3942d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=334&q=80"
file = URI.open(algolearning_photo)
filename = File.basename(URI.parse(algolearning_photo).path)
algolearning_project = Project.new(name: "AlgoLearning", description: 'This is an MVP(Minimum Viable Product) to teach the most used algorithm problems asked by top-tier companies.', port_description: 'Um MVP(Minimum Viable Product) para ensinar os principais algoritmos utilizados em entrevistas de emprego para programadores.', url: "https://www.algolearning.club/")
algolearning_project.photo.attach(io: file, filename: filename)
algolearning_project.save

fourlegsangels_photo = "https://images.unsplash.com/photo-1548681528-6a5c45b66b42?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80"
file = URI.open(fourlegsangels_photo)
filename = File.basename(URI.parse(fourlegsangels_photo).path)
fourlegsangels_project = Project.new(name: "4LegsAngels", description: 'This marketplace app helps rescued animals to be adopted.', port_description: 'Este marketplace é uma ferramenta para para facilitar que animais resgatados sejam adotados.' url: "https://fourlegsangels-vkaraujo.herokuapp.com/")
fourlegsangels_project.photo.attach(io: file, filename: filename)
fourlegsangels_project.save

mr_cocktail_photo = "https://res.cloudinary.com/dn2gpbtwl/image/upload/3glqqj878zsoxh1toekwr15d21xv"
file = URI.open(mr_cocktail_photo)
filename = File.basename(URI.parse(mr_cocktail_photo).path)
mr_cocktail_project = Project.new(name: "Toros Cocktails", description: 'This web app was my first solo project built with Ruby on Rails. With it you can create your own cocktail from a given list of ingredients', port_description: 'Esse foi meu primeiro projeto solo criado com Ruby on Rails, ele fornece uma lista de ingredientes e permite que o usuário crie seu próprio coquetel.', url: "https://toros-cocktail.herokuapp.com")
mr_cocktail_project.photo.attach(io: file, filename: filename)
mr_cocktail_project.save

puts"seeds created! Done!"