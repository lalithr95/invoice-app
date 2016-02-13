# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
  $('.modal-trigger').leanModal()
  $('select').material_select()

  $('#new-client-form').submit (e) ->
    e.preventDefault()
    data = $(this).serialize()
    $.ajax
      url: $(this).attr('action')
      data: data
      method: 'post'
      dataType: 'json'
      success: (data) ->
        if data.status
          $('#new-client').closeModal()
          html = '<li><a href="/clients/' + data.model.id + '/invoices"'
          html += 'rel="nofollow" data-method="post">'+ data.model.name + '</a></li>'
          $('#create-invoice').append(html)
          Materialize.toast "Client successfully created", 4000
        else
          Materialize.toast "Enter required fields!", 4000
      error: (data) ->
        Materialize.toast "Something went wrong! Try again", 4000
