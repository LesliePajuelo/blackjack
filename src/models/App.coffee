# TODO: Refactor this model to use an internal Game Model instead
# of containing the game logic directly.
class window.App extends Backbone.Model
  initialize: ->
    @set 'deck', deck = new Deck()
    @set 'playerHand', deck.dealPlayer()
    @set 'dealerHand', deck.dealDealer()

  # deck for my dealer and player

    @get 'playerHand' 
      .on 'stand', @getResult


  getResult: ->
    $('.stand-button').attr('disabled', true)
    @get('dealerHand').models[0].flip()
    while @get('dealerHand').scores()[0] < 17
      @get('dealerHand').hit()
    @checkWinner()

  checkWinner: ->
    if @get('dealerHand').scores(0) > 21
      alert 'player wins! app model - check winner 1'
      if @get('dealerHand').scores(0) > @get('playerHand').scores(0)
        alert 'Dealer wins app model - check winner 2'
    alert 'Player wins app model - check winner 3'

  checkBust: ->
    if @get('playerHand').scores(0) > 21
      alert 'player lose'
      
    

    #  console.log(@get('playerHand').scores())
    # console.log @get('playerHand').scores()
