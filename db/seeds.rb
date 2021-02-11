CollateralsTag.delete_all
Tag.delete_all
Collateral.delete_all

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

tags = [
  ['language','pl'],
  ['language','cz'],
  ['language','de'],
  ['language','en'],
  ['stack','rails'],
  ['stack','python'],
  ['stack','js'],
  ['stack','nodejs'],
  ['stack','postgres'],
  ['stack','ruby'],
  ['stack','rails'],
  ['stack','ember'],
  ['stack','mysql'],
  ['stack','nest'],
  ['country','Poland'],
  ['country','Germany'],
  ['country','Czech'],
  ['country','USA'],
  ['country','France'],
  ['country','Romania']
]
tags.each { | category, name | Tag.create(category: category, name: name) }

collaterals =[
  ['Ruby For Beginners','https://guides.rubyonrails.org/getting_started.html', 'Article'],
  ['Universal Avenue','https://selleo.com/portfolio/b2b-ecommerce-solution','Article'],
  ['Payment integration','https://guides.rubyonrails.org/getting_started.html3','Article'],
  ['CMS','https://guides.rubyonrails.org/getting_started.html3','Article'],
  ['E-learning','https://guides.rubyonrails.org/getting_started.html3','Article'],
  ['Fintech','https://guides.rubyonrails.org/getting_started.html3','Article']
]
collaterals.each { | title, link, content_type | Collateral.create( title: title, link: link, content_type: content_type ) }

Collateral.all.each do | collateral |
  i = 0
  Tag.all.each do | tag |
    if rand(1...10).even?
      CollateralsTag.create(collateral_id: collateral.id, tag_id: tag.id, weight: [25, 50, 75, 100].sample)
      i += 1
      break if i == 5
    end
  end
end
