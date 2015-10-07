# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(username: "Philip", email: "falconcrew42@gmail.com", password: "provspela", role: "admin")
Info.create(start: "",info: "Folktetten består av ett härligt gäng musiker från Lund. Många va oss har spelat ihop i olika sammahang några år tillbaka, men våren 2015 bestämde vi oss för att bilda en egen grupp med namnet Folktetten. \n\n Vårt främsta syfte är att få spela tillsammans, underhålla publiken och ..? ", contact: "Folktetten gör sig lika bra som underhållningsmusik på konference som bakgrundsmusik till middagar och bröllop. Vår repetoar är bred och utökas hela tiden. \n Om ni har några speciella önskemål utanför vår ordinarie repetoar så ska vi göra bästa för att lösa även det. Kort och gott, vi spelar det ni önskar. \n\n För att boka oss kontaka Annica Eriksson på annica.er@folktetten.se eller på 070-270 60 65")
