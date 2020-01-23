User.create!(name: "Eddie", email: "eddie@email.com", password: "password", phone: "7734748904", shop_id: 1)
User.create!(name: "Peter", email: "peter@email.com", password: "password", phone: "3124749904", shop_id: 2)
User.create!(name: "Jennifer", email: "jen@email.com", password: "password", phone: "7734740976")
User.create!(name: "Dan", email: "dan@email.com", password: "password", phone: "7734086997")

Shop.create!(name: "Eddie's Body Shop", address: "123 Fake ST", phone: "7734748904")
Shop.create!(name: "Pet's Auto Shop", address: "321 Real Dr", phone: "3124749904")

Car.create!(seller_id: 1, buyer_id: 4, make: "Chevrolet", model: "Chevelle SS", year: "1972", color: "silver & black", interior_color: "black", car_condition: "good", location: "Chicago, IL", engin_size: "V-8", transmission_type: "5 speed", exhaust: "Flowermaster", mileage: "34059", price: 25699, tires: "Goodyear", rims: "chrome", car_description: "The car is in good condition. Will drive and has a new engine.")

Car.create!(seller_id: 1, buyer_id: 3, make: "Ford", model: "Mustang GT", year: "1967", color: "white & blue", interior_color: "dark grey", car_condition: "Fair", location: "Chicago, IL", engin_size: "V-8", transmission_type: "4 speed", exhaust: "w/428 P.I.", mileage: "80359", price: 69999, tires: "BF Goodrich", rims: "Chrome", car_description: "The car is in fair condition. Will drive it does have some scratches and rust. Paint needs a touch up and tires need to be replaced.")

Car.create!(seller_id: 1, buyer_id: 4, make: "Cadillac", model: "Eldorado", year: "1976", color: "red", interior_color: "white", car_condition: "fair", location: "Hammond, IN", engin_size: "V-8", transmission_type: "Automatic", exhaust: "Original", mileage: "50592", price: 23099, tires: "Firestone", rims: "Original", car_description: "Classic car, some rust, will drive. None negotiable price.")

Car.create!(seller_id: 2, buyer_id: 4, make: "Pontiac", model: "Trans AM ", year: "1977", color: "black & Gold", interior_color: "dark red", car_condition: "bad", location: "Hammond, IN", engin_size: "V-8", transmission_type: "4 speed", exhaust: "Pypes SGF70 Crossflow System", mileage: "78123", price: 32000, tires: "BF Goodrich", rims: "Original", car_description: "The car is in bad condition. Has some rust, needs new paint. Will start but will not drive unless it is warmed up. Has new tires but rims are scratched. This car was used for racing and does not have all the original parts.")

Car.create!(seller_id: 2, buyer_id: 3, make: "International ", model: "Harvester", year: "1951", color: "brown", interior_color: "dark blue", car_condition: "bad", location: "Chicago, IL", engin_size: "V-6", transmission_type: "4 speed", exhaust: "none", mileage: "129000", price: 9899, tires: "Continental", rims: "Rust Metal", car_description: "This truck needs everything restored. Truck seats are pealing, needs new paint, rims and tires need to be replaced. Does not have a trunk. Exhaust sytem has holes. Will except traids bids.")
Car.create!(seller_id: 1, buyer_id: 4, make: "Pontiac", model: "GTO", year: "1976", color: "black & Gold", interior_color: "dark red", car_condition: "Good", location: "Chicago, IL", engin_size: "V-8", transmission_type: "4 speed", exhaust: "Pypes SGF70 Crossflow System", mileage: "73123", price: 20000, tires: "BF Goodrich", rims: "Original", car_description: "Has new tires but rims are scratched. This car was used for racing and does not have all the original parts.")
Car.create!(seller_id: 1, buyer_id: 4, make: "Doge", model: "Challenger", year: "1970", color: "black", interior_color: "dark red", car_condition: "Good", location: "Chicago, IL", engin_size: "V-8", transmission_type: "4 speed", exhaust: "Pypes SGF70 Crossflow System", mileage: "12233", price: 30000, tires: "Goodyear", rims: "Original", car_description: "Has new tires but rims are scratched. This car was used for racing and does not have all the original parts.")

Image.create!(url: "https://www.admcars.com/galleria_images/432/432_main_l.jpg", car_id: 1)
Image.create!(url: "https://www.admcars.com/galleria_images/432/432_p10_f.jpg", car_id: 1)
Image.create!(url: "https://www.admcars.com/galleria_images/432/432_p4_f.jpg", car_id: 1)
Image.create!(url: "https://www.liveabout.com/thmb/omDLg0vUaiudvTObXVvUf3YRsJo=/768x0/filters:no_upscale():max_bytes(150000):strip_icc()/gt350-56a693a95f9b58b7d0e3ab6f.jpg", car_id: 2)
Image.create!(url: "https://www.drivingemotions.com/galleria_images/421/421_p15_l.jpg", car_id: 2)
Image.create!(url: "https://photos.motorcar.com/used-1966-ford-mustang-shelbygt350tribute-6383-13386497-1-640.jpg", car_id: 2)
Image.create!(url: "https://cdn.bringatrailer.com/wp-content/uploads/2018/09/1976_cadillac_eldorado_1540765396d4995acIMG_20180929_151938-940x544.jpg", car_id: 3)
Image.create!(url: "https://i.pinimg.com/originals/82/45/18/8245180c7c6904da30e3fda78c42cc70.jpg", car_id: 3)
Image.create!(url: "https://i.pinimg.com/originals/c2/ac/b1/c2acb1268d6501419bc386750866a35f.jpg", car_id: 4)
Image.create!(url: "https://www.mad4wheels.com/img/free-car-images/mobile/12011/pontiac-firebird-trans-am-bandit-1977-370215.jpg", car_id: 4)
Image.create!(url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhHpSYcXqd_-bAOp2I-dlLZRA4CRzoYkfDXcNKjG9Qw7Kv-fnQ&s", car_id: 6)
Image.create!(url: "https://i.pinimg.com/originals/25/0c/07/250c07345d0e873dadd263616308494c.jpg", car_id: 8)
Image.create!(url: "https://cdn04.carsforsale.com/3/351989/31101413/thumb/1437337509.jpg", car_id: 15)
Image.create!(url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRS3SszM5sPUYuvDAb1BUY8409gm-l8Lf_fpnW9p9-BiB-gdVObLg&s", car_id: 12)

Message.create!(text: "Is the price negotiable?", sender_id: 3, receiver_id: 1, car_id: 2)

Message.create!(text: "Demo message", sender_id: 4, receiver_id: 2, car_id: 3)

Request.create!(car_id: 2, buyer_id: 3, color: "red", interior_color: "", engine: "", transmission: "", exhaust: "", tires: "", rims: "")
