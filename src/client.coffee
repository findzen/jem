class Jem.Client
  constructor: (output) ->
    # Record start time so we know how much time elapsed before the error occurred 
    @startTime = new Date().toLocaleString()

    # output adapter
    @out = output

    # Cache existing window.onerror
    @_onError = window.onerror || -> true
    window.onerror = @onError

  # catch errors on window
  onError: (msg, url, line) =>
    @out.send new Jem.CrashReport @startTime, msg, url, line

    # call previous handler if it exists
    if @_onError and typeof @_onError is 'function'
      @_onError.call window, msg, url, line
    else
      true

  # method for manually logging errors that may not be caught in
  # window.onerror, i.e. in a try/catch block
  error: (msg) ->
    @out.send new Jem.CrashReport @startTime, msg