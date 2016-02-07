# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
#Events
  $('#account-dropdown').click (e) ->
    e.stopPropagation()
    $('#account').toggleClass("open")
  $(document).click ->
    $('#account').removeClass("open")