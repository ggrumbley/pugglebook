
p1 = Puggle.create(name: "Maisie", color: "Fawn", build: "fat", temperament: "sweet")
p2 = Puggle.create(name: "Rosa", color: "Black", build: "skinny", temperament: "bitey")
p3 = Puggle.create(name: "Gadget", color: "Liver", build: "large", temperament: "snuggley")
p4 = Puggle.create(name: "Radish", color: "Fawn", build: "average", temperament: "confused")
p5 = Puggle.create(name: "Thor", color: "Black", build: "a bit fat", temperament: "mean and rude")

f1 = Food.create(name: "Bacon")
f2 = Food.create(name: "Potato Chips")
f3 = Food.create(name: "Carrots")

FavoriteFood.create(puggle: p1, food: f3)
FavoriteFood.create(puggle: p2, food: f2)

FavoriteFood.create(puggle: p3, food: f1)

FavoriteFood.create(puggle: p4, food: f2)

FavoriteFood.create(puggle: p5, food: f1)
