#encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Page.create(:plug => "index",
            :title => "Главная",
            :main => true)

Page.create(:plug => "floors",
            :title => "Полы")

Page.create(:plug => "roofs",
            :title => "Крыши")

facing = Page.create(:plug => "facing",
            :title => "Отделка")

cf = Page.create(:plug => "clean_facing",
            :title => "Чистовая отделка",
            :parent => facing)

Page.create(:plug => "plaster",
            :title => "Штукатурка",
            :parent => cf)
Page.create(:plug => "putty",
            :title => "Шпатлевка",
            :parent => cf)
Page.create(:plug => "wallpapers",
            :title => "Обои",
            :parent => cf)


Page.create(:plug => "accessories",
            :title => "Комплектующие")

Page.create(:plug => "rent",
            :title => "Аренда оборудования")

Page.create(:plug => "prices",
            :title => "Услуги и цены")

about = Page.create(:plug => "about",
            :title => "О компании")


Page.create(:plug => "contacts",
            :title => "Контакты",
            :parent => about)

Page.create(:plug => "reviews",
            :title => "Отзывы и рекомендации",
            :parent => about)


20.times do |t|
   Review.create(:title => "title#{t}",
                  :comment => "comment#{t}")
end
3.times do |t|
   Banner.create
end