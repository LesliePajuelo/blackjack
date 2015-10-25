assert = chai.assert
expect = chai.expect

describe 'deck', ->
  deck = null
  hand = null


# deck = new Deck()
# playerHand: deck.dealPlayer()
# dealerHand: deck.dealDealer()

fakeAppModel = new App()

# console.log(fakeAppModel)

describe "App Model", ->

  it "getResults function exists", ->
    expect(fakeAppModel.getResult).to.be.a "function"

  it "getResults should leave both dealer hands 'revealed'", ->
    # check if first dealer has a class of covered
    expect(fakeAppModel.get('dealerHand').models[0].changed.revealed).to.be.false
    # run getResults
    fakeAppModel.getResult()
    # check if first dealer has a class of revealed
    expect(fakeAppModel.get('dealerHand').models[0].changed.revealed).to.be.true

  it "checkWinner function exists", ->
    expect(fakeAppModel.checkWinner).to.be.a "function"

  it "checkBust function exists", ->
    expect(fakeAppModel.checkBust).to.be.a "function"