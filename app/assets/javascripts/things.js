// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.


  $('#things-table').dataTable({
    "processing": true,
    "serverSide": true,
    "ajax": $('#things-table').data('source'),
    "pagingType": "full_numbers"
    // optional, if you want full pagination controls.
    // Check dataTables documentation to learn more about
    // available options.
  });
