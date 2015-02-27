namespace('FlashMessage')

class FlashMessage.Handler
  @duration: 3000

  @winMessage: "You have won!"

  @loseMessage: "You have lost!"

  @winStyleType: 'win'

  @loseStyleType: 'lose'

  @errorStyleType: 'error'

  @msgElem: -> $('[data-id=message-content]')

  @renderFlashMessage: (message, styleType) ->
    @msgElem().prepend(@renderHTML(message, styleType))
    @msgElem().slideDown('slow')
    setTimeout(@hideElem, @duration)

  @renderHTML: (message, styleType) ->
    "<div data-id='flash-message' class= '#{styleType} message'>
    <h1>#{message}</h1>
    </div>"

  @hideElem: =>
    @msgElem().slideUp('slow', @clearElem)

  @clearElem: =>
    @msgElem().html('')

  @showWinMessage: ->
    @renderFlashMessage(@winMessage, @winStyleType)

  @showLoseMessage: ->
    @renderFlashMessage(@loseMessage, @loseStyleType)

  @showErrorMessage: (message) ->
    @renderFlashMessage(message, @errorStyleType)
