class window.CardView extends Backbone.View
  className: 'card'

# img/card/10-diamonds.png
# Ace-D
  
  template: _.template '<img src="img/cards/<%= rankName %>-<%= suitName %>.png"/>'
  

  initialize: -> @render()

  render: ->
    @$el.children().detach()
    @$el.html @template @model.attributes
    @$el.addClass 'covered' unless @model.get 'revealed'


