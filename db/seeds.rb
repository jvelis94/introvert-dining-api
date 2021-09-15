# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

menuItems = [
    {
      name: 'meatball sundae',
      category: 'Appetizers',
      blurb: "grandma's meatballs, marinara & herbed ricotta whipped topping",
      price: 10.00
    },
    {
      name: 'jalapeno popper grilled cheese',
      category: 'Appetizers',
      blurb: 'on sourdough w/house bleu cheese sauce',
      price: 10.00
    },
    {
      name: 'pretzel pops',
      category: 'Appetizers',
      blurb: 'soft salty pretzel served with a dipping melty cheese sauce',
      price: 8.00
    },
    {
      name: 'fried buffalo mac',
      category: 'Appetizers',
      blurb: "crusted buffalo chicken mac n'cheese balls flash fried to perfection",
      price: 8.00
    },
    {
      name: 'ahi cupcakes',
      category: 'Appetizers',
      blurb: 'a baroness original; spicy & poke style ahi tuna in mini phyllo cups',
      price: 12.00
    },
    {
      name: "skillet mac n' cheese",
      category: 'Appetizers',
      blurb: "our infamous seven cheese n'mac uber crusted",
      price: 10.00
    },
    {
      name: 'pimento cheese dip',
      category: 'Appetizers',
      blurb: 'housemade pimento cheese ball, sides of picked & herbed Ritz',
      price: 10.00
    },
    {
      name: 'bone-in',
      category: 'Wings',
      blurb: 'mild or hot; served with house bleu cheese & picked veggies',
      price: 12.00
    },
    {
      name: 'boneless',
      category: 'Wings',
      blurb: 'mild or hot; served with house bleu cheese & picked veggies',
      price: 12.00
    },
    {
      name: 'spicy ahi',
      category: 'Salads',
      blurb: 'sushi-grade tuna, scallions, cucumber, toasted ses…s, sesame-citrus vinaigrette & carrot-celery slaw',
      price: 16.00
    },
    {
      name: 'julia caesar',
      category: 'Salads',
      blurb: "seasoned & grilled chicken, house croutons, chef's…omaine lettuce & loads of freshly grated parmesan",
      price: 15.00
    },
    {
      name: "choc'cuterie",
      category: 'Sweets',
      blurb: 'chocolate board consisting of 4 different hand-pic…e whiskey pretzel sticks. Perfect craving killer!',
      price: 12.00
    },
    {
      name: 'black iron cookie',
      category: 'Sweets',
      blurb: 'multi-layered chocolate-pocket cookies with housem…hiskey-caramel drizzle & a sweet red wine drizzle',
      price: 10.00
    },
    {
      name: 'Judith',
      category: 'Burgers',
      blurb: 'Basic Baroness Burger',
      price: 14.00
    },
    {
      name: 'Whitney',
      category: 'Burgers',
      blurb: "Big Bacon Mac n' cheese",
      price: 20.00
    },
    {
      name: 'Quinn',
      category: 'Burgers',
      blurb: 'Brunch Between Buns',
      price: 20.00
    },
    {
      name: 'Suzy Q',
      category: 'Burgers',
      blurb: 'The Baroness BBQ Beauty',
      price: 16.00
    },
    {
      name: 'Yvette',
      category: 'Burgers',
      blurb: 'Curry Veggie Burger Delight',
      price: 14.00
    },
    {
      name: 'Dixie',
      category: 'Burgers',
      blurb: 'An Old-School House Favorite',
      price: 13.00
    },
    {
      name: 'Francine',
      category: 'Burgers',
      blurb: 'Blooming Onion Burger',
      price: 16.00
    },
    {
      name: 'Adele',
      category: 'Burgers',
      blurb: 'French Onion Soup Burger',
      price: 18.00
    },
    {
      name: 'Kiki',
      category: 'Burgers',
      blurb: 'Buffalo Wing Inspired Burger',
      price: 14.00
    },
    {
      name: 'Tina',
      category: 'Burgers',
      blurb: 'Peanut Butter & Black Pepper Bacon',
      price: 18.00
    },
    {
      name: 'Gloria',
      category: 'Burgers',
      blurb: 'Bleu Cheese Au Poivre',
      price: 18.00
    },
    {
      name: 'Celine',
      category: 'Burgers',
      blurb: 'Bloody Mary Burger',
      price: 15.00
    },
    {
      name: 'Shoestring French Fries',
      category: 'Sides',
      blurb: 'seasalt & pepper seasoned',
      price: 5.00
    },
    {
      name: 'house salad',
      category: 'Sides',
      blurb: 'served with citrus vinaigrette',
      price: 5.00
    },
    {
      name: 'SFY',
      category: 'Beers',
      blurb: 'Tropical, Assertive, Lush, Oily, Candied Tangerines. Hopped with Mosaic, Simcoe & Columbus',
      price: 10.00
    },
    {
      name: 'Liquid Sorcery',
      category: 'Beers',
      blurb: 'A juicy smooth IPA. Aromas of melon, cantaloupe ri…lon, strawberry, notes of of pineapple and candy.',
      price: 9.00
    },
    {
      name: 'Fly Like',
      category: 'Beers',
      blurb: 'Juicy yet dry, spritzy, and refreshing. Brewed wit…mplementary citrus character. Super sessionable.\n',
      price: 10.00
    },
    {
      name: 'Ultrasphere',
      category: 'Beers',
      blurb: 'Sour IPA w/ raw wheat, malted oat, milk sugar, raspberry & vanilla; hopped w/ Citra & Mosaic',
      price: 10.00
    },
    {
      name: 'Ultimate Beats',
      category: 'Beers',
      blurb: 'DIPA with coconut and dry-hopped with Mosaic.',
      price: 10.00
    },
    {
      name: 'Beety Wihite',
      category: 'Cocktails',
      blurb: 'Beet Infused Vodka',
      price: 16.00
    },
    {
      name: 'Violet Beauregarde',
      category: 'Cocktails',
      blurb: 'Lemon-ginger infused bourbon',
      price: 16.00
    },
    {
      name: 'The Nightwitch',
      category: 'Cocktails',
      blurb: 'Black peppercorn infused gin',
      price: 16.00
    },
    {
      name: 'Cuchi Cuchi',
      category: 'Cocktails',
      blurb: 'Cinnamon Infused Rum',
      price: 16.00
    }
  ]

menuItems.each do |item|
    puts "creating food item: #{item[:name]}"
    FoodItem.create!(name: item[:name], description: item[:blurb], price: item[:price], category: item[:category]).00
end
