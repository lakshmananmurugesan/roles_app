$(document).on 'turbolinks:load', ->
  $('#users').dataTable
    sPaginationType: "numbers"
    columnDefs: [
      { targets: 'no-sort', orderable: false }
    ]
    bJQueryUI: true
    bProcessing: true
    bServerSide: true
    sAjaxSource: $('#users').data('source')