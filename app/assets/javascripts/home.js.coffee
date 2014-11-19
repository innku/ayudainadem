$(document).ready ->
  $(".select-multiple").multipleSelect()
  $(".minicolor").minicolors theme: "bootstrap"
  $(".icon-select-ul").hide()
  $(".icon-select").hover (->
    $(".icon-select-ul").show()
    $(".icon-select-ul li > i").click ->
      este = $(this).attr("class").split('-')
      ultimo = este[este.length-1]
      $('.value-icon').val(ultimo)
      return
    return
  ), ->
    $(".icon-select-ul").hide()
    return
  return
