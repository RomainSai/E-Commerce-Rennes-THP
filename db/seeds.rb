Item.delete_all

Item.create(
	title: 'Coeur d encre',
	short_description: 'Petite description',
	long_description: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.',
	image_url: 'https://s3.eu-west-3.amazonaws.com/projet.thp.boutique.en.ligne/image1.jpg',
	price_cents: 8099, sku: "image01"
	)

User.create(name: "admin", email: "thprennes@gmail.com", admin: true, password: "thprennes2018")

