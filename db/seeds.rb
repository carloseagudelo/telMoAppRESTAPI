#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


country = Country.create([{name: 'Colombia'}, {name: 'Venezuela'}])
city = City.create([{name: 'Medellin', country_id: country.first}, {name: 'Bogota', country_id: country.first}])
type = Type.create([{name: 'tipo 1', description: 'description 1'}, {name: 'tipo 2', description: 'description 2'}])
Motel.create([{name: 'Motel 1', description: 'descripcion 1', URL_WebPage: 'web_page 1', prices: 'dos mil', URL_Video: 'video 1', logo: 'logo 1', type_id: type.first, city_id: city.first}])
