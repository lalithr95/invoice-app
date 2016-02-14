# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
  filterdata =
    year: 2016
    payment: 'all'

  $('#filter-display').click (e) ->
    if $('#filterPanel').is(':visible')
      $('#filterPanel').toggleClass("filterPanel")
      $(this).text "Show Filter Panel"
    else
      $('#filterPanel').toggleClass("filterPanel")
      $(this).text "Hide Filter Panel"
