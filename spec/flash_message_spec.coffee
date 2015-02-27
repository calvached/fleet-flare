describe 'FlashMessage.Handler', ->
  slideDownSpy = null

  beforeEach ->
    setFixtures("<div data-id='message-content'></div>")
    slideDownSpy = spyOn($.fn, 'slideDown')

  it 'it shows a win message', ->
    winMsg = FlashMessage.Handler.winMessage
    FlashMessage.Handler.showWinMessage()

    expect(slideDownSpy).toHaveBeenCalled()
    expect(FlashMessage.Handler.msgElem()).toContainText(winMsg)

  it 'it shows a lose message', ->
    loseMsg = FlashMessage.Handler.loseMessage
    FlashMessage.Handler.showLoseMessage()

    expect(slideDownSpy).toHaveBeenCalled()
    expect(FlashMessage.Handler.msgElem()).toContainText(loseMsg)

  it 'it shows an error message', ->
    errorMsg = 'error'
    FlashMessage.Handler.showErrorMessage(errorMsg)

    expect(slideDownSpy).toHaveBeenCalled()
    expect(FlashMessage.Handler.msgElem()).toContainText(errorMsg)

  it 'displays a message for 3 seconds', ->
    jasmine.Clock.useMock()
    slideUpSpy = spyOn($.fn, 'slideUp')

    FlashMessage.Handler.showWinMessage()

    expect(slideDownSpy).toHaveBeenCalled()

    jasmine.Clock.tick(3000)

    expect(slideUpSpy).toHaveBeenCalled()
