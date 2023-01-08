# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

Portrait.destroy_all
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'nokogiri'

file      = File.open('db/portraits.xml')
document  = Nokogiri::XML(file)
number = 0

image =[]
document.root.xpath('portrait').each do |portrait|
  attributes       = portrait.attributes
  attributes.each do |key, value|
	  image = value
	end
  title  = portrait.xpath('title').text
  details      = portrait.xpath('details').text
  dimensions      = portrait.xpath('dimensions').text
  number += 1
	Portrait.create(numéro: number, image: image, titre: title, dimensions: dimensions, details: details, visages: "visages_#{number}-#{number}.jpg", petiteimage: "Petit-#{image}")
  # Cloudinary::Uploader.upload("app/assets/images/#{image}", :use_filename => true, :flags => :attachment) "app/assets/images/#{image}"

  puts "#{number} - #{image} - #{title} - #{details} - #{dimensions} created"
  puts "hello"
end

# Manque la photo numéro 1, 2, 17, 31, 36, 47, 49, 50, 56, 59, 79, 82, 97.