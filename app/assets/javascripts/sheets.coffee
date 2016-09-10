$(document).ready () ->
  submitSheet()

submitSheet = () ->
  $('.edit-btn-sheet').click (e) ->
    e.preventDefault()
    sheet_id = $(this).attr 'id'
    $("#sheet-#{sheet_id}").toggleClass 'hidden'
    $("#form-#{sheet_id}").toggleClass 'hidden'


#   $('.save-edit').click(function() {
#
#   var sheet_id = $(this).attr('id');
#   var body = $('#form-'+sheet_id + ' .edit-body').val();
#
#
#   $.ajax({
#     url: '/sheet/'+sheet_id,
#     type: 'PUT',
#     dataType: "json",
#     data: {'body': body, 'id': sheet_id},
#     success: function(response) {
#       $('#sheet-'+sheet_id).html(response.body).show();
#       $('#form-'+sheet_id).hide();
#
#     },
#     error: function(response) {
#       console.log(response);
#     }
#   });
# };
