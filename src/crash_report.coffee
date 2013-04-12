class Jem.CrashReport
  constructor: (startTime, msg, scriptURL = null, line = null) ->
    @startTime = startTime
    @msg = msg
    @scriptURL = scriptURL
    @line = line
    @userAgent = navigator.userAgent
    @date = new Date().toLocaleString()
    @url = window.location.href