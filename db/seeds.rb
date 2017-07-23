colors = Deck.create(name: "Colors")

shapes = Deck.create(name: "Shapes")

sports = Deck.create(name: "Sports")

films = Deck.create(name: "Films")

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


Card.create(question: "What was Anfernee Hardaway’s childhood nickname?", answer: "Penny", deck_id: sports.id)
Card.create(question: "This Chicago Bears football player was nicknamed “sweetness” because of his moves on the football field:
", answer: "Walter Payton", deck_id: sports.id)
Card.create(question: "This baseball player was known as the “ironman” in his sport for his consecutive games played:", answer: "Cal Ripken Jr.", deck_id: sports.id)
Card.create(question: "This Hawaiian-born, LGPA player attended Standford and has 4 professional wins:", answer: "Michelle Wie", deck_id: sports.id)
Card.create(question: "This boxer once threatened to eat his opponent’s children, and even bit off a man’s ear in the ring. Who is he?
", answer: "Mike Tyson", deck_id: sports.id)

Card.create(question: "Andy Dufresne was wrongfully convicted of murder in this drama:", answer: "Shawshank Redemption", deck_id: films.id)
Card.create(question: "What was Neo’s “Matrix” name?", answer: "Thomas Anderson", deck_id: films.id)
Card.create(question: "In “Rocky IV”, where was Sylvester Stalone’s opponent from?", answer: "Russia", deck_id: films.id)
Card.create(question: "Tom Hanks in the film “Castaway”, speaks to a volleyball named:", answer: "Wilson", deck_id: films.id)
Card.create(question: "Spike Lee has directed this Oscar award-winning actor in films such as “Inside Man” and “Mo Betta Blues”. What is his name?
", answer: "Denzel Washington", deck_id: films.id)

