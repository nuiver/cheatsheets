$(document).ready(function() {
  // newSheet();
  submitSheet();
});


function submitSheet() {

  $('.edit-btn-sheet').click(function(e) {
    e.preventDefault();
    var sheet_id = $(this).attr('id');
    $('#sheet-'+sheet_id).toggleClass('hidden');
    $('#form-'+sheet_id).toggleClass('hidden');
  });

  $('.save-edit').click(function() {

    var sheet_id = $(this).attr('sheet_id');
    var title = $('#title-'+sheet_id + ' .edit-title').val();
    var body = $('#body-'+sheet_id + ' .edit-body').val();
    var tags = $('#tags-'+sheet_id + ' .edit-tags').val();

    console.log(sheet_id);
    $.ajax({
      url: '/sheets/'+sheet_id,
      type: 'PUT',
      dataType: "json",
      data: {'body': body, 'title': title, 'tags': tags, 'id': sheet_id},
      success: function(response) {
        $('#sheet-'+sheet_id).html(response.body).show();
        $('#form-'+sheet_id).hide();
      },
      error: function(response) {
        console.log(response);
      }
    });
  });

};
