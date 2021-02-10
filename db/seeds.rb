# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# tags = [
#   ['country','Poland'],
#   ['country','Germany'],
#   ['country','Czech']
# ]
# tags.each { |cat,name| Tag.create(category: cat, name: name) }

collaterals =[
  ['Ruby For Beginners1','https://guides.rubyonrails.org/getting_started.html1', 'Article1'],
  ['Ruby For Beginners2','https://guides.rubyonrails.org/getting_started.html2','Article2'],
  ['Ruby For Beginners3','https://guides.rubyonrails.org/getting_started.html3','Article3']
]
collaterals.each { |title,link,content_type| Collateral.create(title: title, link: link, content_type:content_type) }

