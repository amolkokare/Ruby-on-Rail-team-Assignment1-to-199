App.Chat = App.cable.subscriptions.create "ChatChannel",
connected: ->
  console.log("EBSOCKET CLIENT CONNECTED")

disconnected: ->
  #Called when subscriptions has been terminated by server

received: (data) ->
  console.log(data['message'])
send_msg: (data)->
  @perform 'send_msg', messae:data
