foods = Deck.create(name: "Foods")
marvel_comics = Deck.create(name: "Marvel Comics")

Card.create(question: "What fruit is shaped like a half moon?", answer: "Banana", deck_id: foods_id)
Card.create(question: "What fruit looks like the sun?", answer: "Orange", deck_id: foods_id)
Card.create(question: "What food does the Teenage Mutant Ninja Turtles eat all the time?", answer: "Pizza", deck_id: foods_id)
Card.create(question: "What food does Garfield the Cat eat all the time?", answer: "Lasagna", deck_id: foods_id)
Card.create(question: "What can Robocop eat?", answer: "Baby Food", deck_id: foods_id)

Card.create(question: "In which comic does Spider-Man acquire his black symbiote suit?", answer: "Marvel Super Heroes Secret Wars #8", deck_id: marvel_comics_id)
Card.create(question: "What is the model of the first Iron Man suit that Tony Stark created?", answer: "Mark 1 Armor", deck_id: marvel_comics_id)
Card.create(question: "Where did the Black Panther gain his degree in physics from?", answer: "Oxford University", deck_id: marvel_comics_id)
Card.create(question: "How tall is Captain America?", answer: "188cm", deck_id: marvel_comics_id)
Card.create(question: "What type of metal was infused into Wolverine's bones?", answer: "Adamantium", deck_id: marvel_comics_id)
