# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Page.create(:plug => "floors",
            :title => "Полы")

Page.create(:plug => "roofs",
            :title => "Крыши")

Page.create(:plug => "facing",
            :title => "Отделка")

Page.create(:plug => "accessories",
            :title => "Комплектующие")

Page.create(:plug => "rent",
            :title => "Аренда оборудования")

Page.create(:plug => "prices",
            :title => "Услуги и цены",
            :main => true)

Page.create(:plug => "contacts",
            :title => "Контакты")

