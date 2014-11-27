$(document).ready ->

  # Wysiwyg
  $(".wysiwyg").editable inlineMode: false

  # Mini picker
  $(".minicolor").minicolors theme: "bootstrap"

  # multiple select
  $(".select-multiple").multipleSelect()



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

  # Add sub
  $('.nueva-sub').click ->
    $(".add-subcategory").hide()
    $('.add-sub').show()
    $('.nuevo').show()

  $('.lista-sub .existe').click ->
    clase = this.className
    $(".add-subcategory").hide()
    $(".add-sub").hide()
    primera = clase.split(' ')[0]
    $('.'+primera).show()

  $('.add-sub').click ->
    $(".oculta").hide()
