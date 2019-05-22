RESTAURANTS = [
  {
    name: 'Epicure',
    category: 'french',
    address: '1 Louie Ave, Paris',
    phone_number: '213 123 442'
  },
  {
    name: 'Pizza Pizza Pizza',
    category: 'italian',
    address: '124 Pizzeria Ave, Rome',
    phone_number: '3233 23 432'
  },
  {
    name: 'Sushi Train',
    category: 'japanese',
    address: '1 Ichiban, Tokyo',
    phone_number: '13331 44112'
  },
  {
    name: 'Yum-Cha',
    category: 'chinese',
    address: '1 Peoples Street, Shanghai',
    phone_number: '21312 3442 882'
  },
  {
    name: 'WaffleHous',
    category: 'belgian',
    address: '1 Brusselsmuscles Road, Brussels',
    phone_number: '11213 123 442'
  }
].freeze

REVIEWS = [
  {
    restaurant_id: 1,
    content: 'this restaurant is pretty good',
    rating: 5
  },
  {
    restaurant_id: 2,
    content: 'this one could be better',
    rating: 2
  }
].freeze

Restaurant.create(RESTAURANTS)
Review.create(REVIEWS)
