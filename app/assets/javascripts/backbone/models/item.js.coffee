class Domag.Models.Item extends Backbone.Model
  paramRoot: 'item'

  defaults:
    name: null
    description: null
    state: null

  schema: {
    name: 'Text',
    description: 'Text',
    state: { type: 'Select', options: ['Mr', 'Mrs', 'Ms'] }
  }

class Domag.Collections.ItemsCollection extends Backbone.Collection
  model: Domag.Models.Item
  url: '/items'
