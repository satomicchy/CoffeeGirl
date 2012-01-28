jQuery ($) ->
  $('.read_more').click ->
    id = @href.split('/')[4]
    $("#report_area#{id}").height("100%")
