$(document).ready ->
  $('a[data-confirm]').data
    'confirm-fade': true
    'confirm-title': 'Overtime App'
    'confirm-cancel': 'Wait!'
    'confirm-cancel-class': 'btn-danger'
    'confirm-proceed': 'I Confirm'
  $('a[data-method=delete]').data
    'confirm-title': 'Warning'
    'confirm-cancel': 'Cancel'
    'confirm-cancel-class': 'btn-cancel'
    'confirm-proceed': 'Delete'
    'confirm-proceed-class': 'btn-danger'
  return