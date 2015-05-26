# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
  
Regression.create(harga: 190, tahun: 9, km: 59000)
Regression.create(harga: 315, tahun: 3, km: 30000)
Regression.create(harga: 220, tahun: 5, km: 52000)
Regression.create(harga: 184, tahun: 7, km: 65000)
Regression.create(harga: 190, tahun: 8, km: 20000)
Regression.create(harga: 183, tahun: 8, km: 48105)
Regression.create(harga: 185, tahun: 8, km: 27000)
Regression.create(harga: 195, tahun: 8, km: 23886)
Regression.create(harga: 180, tahun: 7, km: 35000)
Regression.create(harga: 185, tahun: 8, km: 52000)
Regression.create(harga: 210, tahun: 6, km: 23000)
Regression.create(harga: 197, tahun: 7, km: 34000)
Regression.create(harga: 307, tahun: 3, km: 7000)
Regression.create(harga: 325, tahun: 3, km: 24000)
Regression.create(harga: 310, tahun: 2, km: 10000)
Regression.create(harga: 300, tahun: 2, km: 25226)
Regression.create(harga: 255, tahun: 4, km: 46434)
Regression.create(harga: 210, tahun: 3, km: 28000)
Regression.create(harga: 195, tahun: 7, km: 23000)
Regression.create(harga: 220, tahun: 5, km: 30000)



Markov.create(layanan: "Platinum", platinum: 25, dedicated: 19, localloop: 25)
Markov.create(layanan: "Dedicated", platinum: 10, dedicated: 13, localloop: 27)
Markov.create(layanan: "Local Loop", platinum: 16, dedicated: 8, localloop: 21)