$(document).ready ->

  contenedor = $('#generalContent').attr("data-controller")
  vista = $('#generalContent').attr("data-view")

  # Wysiwyg
  $(".wysiwyg").editable inlineMode: false

  # Mini picker
  $(".minicolor").minicolors theme: "bootstrap"

  # multiple select
  $(".select-multiple").multipleSelect()


  if contenedor == 'categorias' && vista == 'edit' || vista == 'new'
    nuevo = $('.nuevo').length
    total = nuevo
    if total == 0
      $('#totalSub').hide()
    else
      $('#totalSub').html(total)

    # Add sub
    $('.add-sub').click ->
      $(".add-subcategory").hide()
      $('.nuevo').show()
      $(".oculta").hide()

    $('.lista-sub .existe').click ->
      clase = this.className
      $(".add-subcategory").hide()
      primera = clase.split(' ')[0]
      $('.'+primera).show()

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
