class Domag.Models.Item extends Backbone.Model
  paramRoot: 'item'

  defaults:
    name: null
    description: null
    state: null

class Domag.Collections.ItemsCollection extends Backbone.Collection
  model: Domag.Models.Item
  url: '/items'
