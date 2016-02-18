# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
  filterdata =
    year: 2016
    payment: 'all'
  if !$('body').hasClass('invoices')
    $('body').removeClass()
    $('body').addClass('invoices')
  $('#filter-display').click (e) ->
    that = @
    if $('#filterPanel').is(':visible')
      $('#filterPanel').slideUp ->
        $('#filterPanel').toggleClass("filterPanel")
        $(that).text "Show Filter Panel"
    else
      $('#filterPanel').slideDown ->
        $('#filterPanel').toggleClass("filterPanel")
        $(that).text "Hide Filter Panel"
