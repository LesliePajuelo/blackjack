# TODO: Refactor this model to use an internal Game Model instead
# of containing the game logic directly.
class window.App extends Backbone.Model
  initialize: ->
    @set 'deck', deck = new Deck()
    @set 'playerHand', deck.dealPlayer()
    @set 'dealerHand', deck.dealDealer()

  # deck for my dealer and player

    @get 'playerHand'
      .on 'checkBust', @checkBust


  getResult: ->
    $('.stand-button').attr('disabled', true)
    @get('dealerHand').models[0].flip()
    while @get('dealerHand').bestScore() < 17
      @get('dealerHand').hit()
    
  checkWinner: ->
    if @get('playerHand').bestScore() == 21
      alert 'Player wins!'
    if @get('dealerHand').bestScore() > 21
      alert 'Player wins!'
    else 
      if @get('dealerHand').bestScore() > @get('playerHand').bestScore()
        alert 'Dealer wins!'
      else alert 'Player wins!'

  checkBust: ->
    console.log @bestScore()
    
    if @bestScore() > 21
      alert 'player lose - check bust'
      $('.hit-button').attr('disabled', true)
      

    #  console.log(@get('playerHand').scores())
    # console.log @get('playerHand').scores()
