class Jem.OutputAdapter
  constructor: (url) ->
    @url = url

  send: (data) ->
    console.log data
    unless @el then @createElement()
    @el.src = @url + '?json=' + encodeURIComponent JSON.stringify(data)

  createElement: ->
    @el = document.createElement 'iframe'
    @el.style.display = 'none'
    document.getElementsByTagName('body')[0].appendChild @el