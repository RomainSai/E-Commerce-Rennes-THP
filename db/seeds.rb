Item.delete_all

Item.create(
	title: 'Coeur d encre',
	short_description: 'Petite description',
	long_description: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.',
	#image_url: 'https://s3.eu-west-3.amazonaws.com/projet.thp.boutique.en.ligne/image1.jpg',
	price_cents: 8099, sku: "image01"
	).image_url.attach(
	io: File.open("#{Rails.root}/app/assets/images/image1.jpg"),
	filename: "image1.jpg")

Item.create(
	title: 'Floteuse',
	short_description: 'Petite description',
	long_description: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.',
	#image_url: 'https://s3.eu-west-3.amazonaws.com/projet.thp.boutique.en.ligne/image2.jpg',
	price_cents: 5699, sku: "image02"
	).image_url.attach(
	io: File.open("#{Rails.root}/app/assets/images/image2.jpg"),
	filename: "image2.jpg")

Item.create(
	title: 'Les doigts du cul',
	short_description: 'Petite description',
	long_description: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.',
	#image_url: 'https://s3.eu-west-3.amazonaws.com/projet.thp.boutique.en.ligne/image3.jpg',
	price_cents: 9599, sku: "image03"
	).image_url.attach(
	io: File.open("#{Rails.root}/app/assets/images/image3.jpg"),
	filename: "image3.jpg")

Item.create(
	title: 'Les pensées',
	short_description: 'Petite description',
	long_description: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.',
	#image_url: 'https://s3.eu-west-3.amazonaws.com/projet.thp.boutique.en.ligne/image4.jpg',
	price_cents: 2999, sku: "image04"
	).image_url.attach(
	io: File.open("#{Rails.root}/app/assets/images/image4.jpg"),
	filename: "image4.jpg")

Item.create(
	title: 'Monkey z',
	short_description: 'Petite description',
	long_description: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.',
	#image_url: 'https://s3.eu-west-3.amazonaws.com/projet.thp.boutique.en.ligne/image5.jpg',
	price_cents: 7399, sku: "image05"
	).image_url.attach(
	io: File.open("#{Rails.root}/app/assets/images/image5.jpg"),
	filename: "image5.jpg")

Item.create(
	title: 'Psyche tache',
	short_description: 'Petite description',
	long_description: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.',
	#image_url: 'https://s3.eu-west-3.amazonaws.com/projet.thp.boutique.en.ligne/image6.jpg',
	price_cents: 3199, sku: "image06"
	).image_url.attach(
	io: File.open("#{Rails.root}/app/assets/images/image6.jpg"),
	filename: "image6.jpg")

Item.create(
	title: 'Renaissance',
	short_description: 'Petite description',
	long_description: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.',
	#image_url: 'https://s3.eu-west-3.amazonaws.com/projet.thp.boutique.en.ligne/image7.jpg',
	price_cents: 5899, sku: "image07"
	).image_url.attach(
	io: File.open("#{Rails.root}/app/assets/images/image7.jpg"),
	filename: "image7.jpg")

Item.create(
	title: 'Tea time',
	short_description: 'Petite description',
	long_description: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.',
	#image_url: 'https://s3.eu-west-3.amazonaws.com/projet.thp.boutique.en.ligne/image8.jpg',
	price_cents: 2599, sku: "image08"
	).image_url.attach(
	io: File.open("#{Rails.root}/app/assets/images/image8.jpg"),
	filename: "image8.jpg")

Item.create(
	title: 'Boat',
	short_description: 'Petite description',
	long_description: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.',
	#image_url: 'https://s3.eu-west-3.amazonaws.com/projet.thp.boutique.en.ligne/image9.jpg',
	price_cents: 8599, sku: "image09"
	).image_url.attach(
	io: File.open("#{Rails.root}/app/assets/images/image9.jpg"),
	filename: "image9.jpg")

Item.create(
	title: 'Encre',
	short_description: 'Petite description',
	long_description: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.',
	#image_url: 'https://s3.eu-west-3.amazonaws.com/projet.thp.boutique.en.ligne/image10.jpg',
	price_cents: 1199, sku: "image10"
	).image_url.attach(
	io: File.open("#{Rails.root}/app/assets/images/image10.jpg"),
	filename: "image10.jpg")

Item.create(
	title: 'Monster',
	short_description: 'Petite description',
	long_description: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.',
	#image_url: 'https://s3.eu-west-3.amazonaws.com/projet.thp.boutique.en.ligne/image11.jpg',
	price_cents: 6599, sku: "image11"
	).image_url.attach(
	io: File.open("#{Rails.root}/app/assets/images/image11.jpg"),
	filename: "image11.jpg")

Item.create(
	title: 'Octopus',
	short_description: 'Petite description',
	long_description: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.',
	#image_url: 'https://s3.eu-west-3.amazonaws.com/projet.thp.boutique.en.ligne/image12.jpg',
	price_cents: 1999, sku: "image12"
	).image_url.attach(
	io: File.open("#{Rails.root}/app/assets/images/image12.jpg"),
	filename: "image12.jpg")

Item.create(
	title: 'Ron',
	short_description: 'Petite description',
	long_description: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.',
	#image_url: 'https://s3.eu-west-3.amazonaws.com/projet.thp.boutique.en.ligne/image13.jpg',
	price_cents: 9799, sku: "image13"
	).image_url.attach(
	io: File.open("#{Rails.root}/app/assets/images/image13.jpg"),
	filename: "image13.jpg")

Item.create(
	title: 'Like a flamant rose',
	short_description: 'Petite description',
	long_description: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.',
	#image_url: 'https://s3.eu-west-3.amazonaws.com/projet.thp.boutique.en.ligne/image14.jpg',
	price_cents: 1799, sku: "image14"
	).image_url.attach(
	io: File.open("#{Rails.root}/app/assets/images/image14.jpg"),
	filename: "image14.jpg")

Item.create(
	title: 'Aurore Boréale',
	short_description: 'Petite description',
	long_description: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.',
	#image_url: 'https://s3.eu-west-3.amazonaws.com/projet.thp.boutique.en.ligne/image15.jpg',
	price_cents: 1499, sku: "image15"
	).image_url.attach(
	io: File.open("#{Rails.root}/app/assets/images/image15.jpg"),
	filename: "image15.jpg")

Item.create(
	title: 'Mets toi à nu',
	short_description: 'Petite description',
	long_description: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.',
	#image_url: 'https://s3.eu-west-3.amazonaws.com/projet.thp.boutique.en.ligne/image16.jpg',
	price_cents: 2299, sku: "image16"
	).image_url.attach(
	io: File.open("#{Rails.root}/app/assets/images/image16.jpg"),
	filename: "image16.jpg")

Item.create(
	title: 'Naked pizza',
	short_description: 'Petite description',
	long_description: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.',
	#image_url: 'https://s3.eu-west-3.amazonaws.com/projet.thp.boutique.en.ligne/image17.jpg',
	price_cents: 3299, sku: "image17"
	).image_url.attach(
	io: File.open("#{Rails.root}/app/assets/images/image17.jpg"),
	filename: "image17.jpg")

Item.create(
	title: 'Queen of the bitches',
	short_description: 'Petite description',
	long_description: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.',
	#image_url: 'https://s3.eu-west-3.amazonaws.com/projet.thp.boutique.en.ligne/image18.jpg',
	price_cents: 4299, sku: "image18"
	).image_url.attach(
	io: File.open("#{Rails.root}/app/assets/images/image18.jpg"),
	filename: "image18.jpg")

Item.create(
	title: 'Icescream',
	short_description: 'Petite description',
	long_description: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.',
	#image_url: 'https://s3.eu-west-3.amazonaws.com/projet.thp.boutique.en.ligne/image19.jpg',
	price_cents: 3799, sku: "image19"
	).image_url.attach(
	io: File.open("#{Rails.root}/app/assets/images/image19.jpg"),
	filename: "image19.jpg")

Item.create(
	title: 'Titre',
	short_description: 'Petite description',
	long_description: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.',
	#image_url: 'https://s3.eu-west-3.amazonaws.com/projet.thp.boutique.en.ligne/image20.jpg',
	price_cents: 8199, sku: "image20"
	).image_url.attach(
	io: File.open("#{Rails.root}/app/assets/images/image20.jpg"),
	filename: "image20.jpg")
