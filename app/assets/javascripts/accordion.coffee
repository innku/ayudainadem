$(document).ready ->
  allPanels = $(".accordion > dd").hide()
  $(".accordion > dt > a").click ->
    allPanels.slideUp()
    $(".accordion > dt > a").removeClass "active"
    $(this).addClass "active"
    $(this).parent().next().slideDown()
    false

  return
