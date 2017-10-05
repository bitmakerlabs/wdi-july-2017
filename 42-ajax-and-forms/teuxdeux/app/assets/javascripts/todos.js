// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(function() {
  $('#new_todo').on('submit', function(e) {
    e.preventDefault();

    var self = $(this);

    $.ajax({
      method: self.attr('method'),
      url: self.attr('action'),
      data: self.serialize(),
      dataType: 'json'
    }).done(function(data) {
      console.log('Received response!');

      var newTodo = $('<li>').html(data.content);

      $('#todos-list').append(newTodo);
      $('#todo_content').val('');
    });

    console.log('Sent AJAX request!');
  });
});
