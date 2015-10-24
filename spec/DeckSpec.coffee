assert = chai.assert

describe 'deck', ->
  deck = null
  hand = null

  beforeEach ->
    deck = new Deck()
    hand = deck.dealPlayer()

  # describe 'new deck size', ->
  #   it 'should have 52 cards', ->
  #     assert.strictEqual deck.length, 52

  describe 'hit', ->
    it 'should give the last card from the deck', ->
      assert.strictEqual deck.length, 50
      # console.log("before hit "+ deck.length)
      # debugger;
      hand.hit()
      # console.log("after hit " + deck.length)
       # console.log("assert " + assert.strictEqual deck.length, 49)
      assert.strictEqual deck.length, 49
