$(document).ready ->
  # Multiple Select
  $(".select-multiple").multipleSelect()

  # Color picker
  $(".minicolor").minicolors theme: "bootstrap"

  # Wysiwyg
  $(".wysiwyg").editable inlineMode: false

  # Icon Select
  #$(".icon-select-ul").hide()
  #$(".icon-select").hover (->
  #  $(".icon-select-ul").show()
  #  $(".icon-select-ul li > i").click ->
  #    este = $(this).attr("class").split('-')
  #    ultimo = este[este.length-1]
  #    $('.value-icon').val(ultimo)
  #    $(".icon-select-ul").hide()
  #    return
  #  return
  #), ->
  #  $(".icon-select-ul").hide()
  #  return
  #return

  runwysi = ->
    alert "hola"
    $(".wysiwyg").editable inlineMode: false
    return
