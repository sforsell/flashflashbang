colors = Deck.create(name: "Colors")

shapes = Deck.create(name: "Shapes")

Card.create(question: "Green means..?", answer: "go", deck_id: colors.id)
Card.create(question: "The rainbow consists of red, orange, yellow, green, blue and.. ?", answer: "indigo", deck_id: colors.id)
Card.create(question: "tomatoes are most commonly...?", answer: "red", deck_id: colors.id)
Card.create(question: "If someone's feeling down, they might refer to it as feeling...?", answer: "blue", deck_id: colors.id)
Card.create(question: "the last name of Breaking Bad's Walter", answer: "white", deck_id: colors.id)

Card.create(question: "If you're really famous you get a sign on the sidewalk in hollywood. What shape is the sign?", answer: "star", deck_id: shapes.id)
Card.create(question: "Someone who is boring might be referred to as...?", answer: "square", deck_id: shapes.id)
Card.create(question: "A friendship group is sometimes called a...?", answer: "circle", deck_id: shapes.id)
Card.create(question: "What's a square that has longer sides than height called?", answer: "rectangle", deck_id: shapes.id)
Card.create(question: "what's the name of a shape that has three sides?", answer: "triangle", deck_id: shapes.id)
