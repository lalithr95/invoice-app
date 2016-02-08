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
  $('#account-details').click (e) ->
    e.preventDefault()
    $(this).parent().addClass('active')
    $('#company').parent().removeClass('active')
    $('#account-tab').addClass('active')
    $('#company-tab').removeClass('active')
  $('#company').click (e) ->
    e.preventDefault()
    $(this).parent().addClass('active')
    $('#account-details').parent().removeClass('active')
    $('#account-tab').removeClass('active')
    $('#company-tab').addClass('active')