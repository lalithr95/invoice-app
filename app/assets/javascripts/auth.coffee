jQuery ->
  $('#signup-toggle').click (e) ->
    e.preventDefault()
    $('#signup').removeClass('hide')
    $('#login').addClass('hide')
    $('.signup-title').addClass('hide')
    $('.login-title').removeClass('hide')
  $('#login-toggle').click (e) ->
    e.preventDefault()
    $('#signup').addClass('hide')
    $('#login').removeClass('hide')
    $('.signup-title').removeClass('hide')
    $('.login-title').addClass('hide')
