(function() {
  $(document).ready(function() {
    var contenedor, nuevo, total, vista;
    contenedor = $('#generalContent').attr("data-controller");
    vista = $('#generalContent').attr("data-view");
    $(".wysiwyg").editable({
      language: "es",
      inlineMode: false,
      buttons: ["bold", "italic", "underline", "fontSize", "table", "insertVideo", "insertImage", "uploadFile", "insertOrderedList", "insertUnorderedList", "color", "createLink", "redo", "undo"]
    });
    $(".minicolor").minicolors({
      theme: "bootstrap"
    });
    $(".select-multiple").multipleSelect();
    if (contenedor === 'categorias' && vista === 'edit' || vista === 'new') {
      nuevo = $('.nuevo').length;
      total = nuevo;
      if (total === 0) {
        $('#totalSub').hide();
      } else {
        $('#totalSub').html(total);
      }
      $('.add-sub').click(function() {
        $(".add-subcategory").hide();
        $('.nuevo').show();
        return $(".oculta").hide();
      });
      return $('.lista-sub .existe').click(function() {
        var clase, primera;
        clase = this.className;
        $(".add-subcategory").hide();
        primera = clase.split(' ')[0];
        return $('.' + primera).show();
      });
    }
  });

}).call(this);
