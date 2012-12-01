Domag.Views.Items ||= {}

class Domag.Views.Items.IndexView extends Backbone.View
  template: JST["backbone/templates/items/index"]

  initialize: () ->
    @options.items.bind('reset', @addAll)

    item = new Domag.Models.Item
    @form = new Backbone.Form({ model: item })
    @form.bind(
    $('#contentContainer').append(@form.render().el)


  addAll: () =>
    @options.items.each(@addOne)

  addOne: (item) =>
    view = new Domag.Views.Items.ItemView({model : item})
    @$("#itemList").append(view.render().el)

  render: =>
    $(@el).html(@template(items: @options.items.toJSON() ))
    @addAll()

    return this
