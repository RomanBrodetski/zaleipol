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
            :main => true,
            :weight => 100)

Page.create(:plug => "floors",
            :title => "Полы",
            :weight => 90)

Page.create(:plug => "roofs",
            :title => "Крыши",
            :weight => 80)

facing = Page.create(:plug => "facing",
            :title => "Отделка",
            :weight => 70)

cf = Page.create(:plug => "clean_facing",
            :title => "Чистовая отделка",
            :parent => facing,
            :weight => 100)

Page.create(:plug => "plaster",
            :title => "Штукатурка",
            :parent => cf,
            :weight => 100)
Page.create(:plug => "putty",
            :title => "Шпатлевка",
            :parent => cf,
            :weight => 90)
Page.create(:plug => "wallpapers",
            :title => "Обои",
            :parent => cf,
            :weight => 80)


Page.create(:plug => "accessories",
            :title => "Комплектующие",
            :weight => 60)

Page.create(:plug => "rent",
            :title => "Аренда оборудования",
            :weight => 50)

Page.create(:plug => "prices",
            :title => "Услуги и цены",
            :weight => 40)

about = Page.create(:plug => "about",
            :title => "О компании",
            :weight => 30)


Page.create(:plug => "contacts",
            :title => "Контакты",
            :parent => about,
            :weight => 100)

Page.create(:plug => "reviews",
            :title => "Отзывы и рекомендации",
            :parent => about,
            :weight => 90)

