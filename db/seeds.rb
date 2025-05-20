Place.destroy_all
Entry.destroy_all

Place.create(name: "Mexico City")
Place.create(name: "Charleston")
Place.create(name: "Beijing")
Place.create(name: "Amsterdam")

Entry.create(title: "Ate tacos", description: "something, something, something...", occurred_on: "2022-01-01", place_id: "1")
Entry.create(title: "Lisa and Jim's wedding", description: "something, something, something...", occurred_on: "2022-01-01", place_id: "1")
Entry.create(title: "Ate tacos again", description: "something, something, something...", occurred_on: "2022-01-01", place_id: "1")