$(document).ready(function() {
  $("#post_form").on("submit", function() {
    event.preventDefault();
    var form = $(this);

    $.ajax({
      url: form.attr("action"),
      type: "POST",
      data: form.serialize(),
    })
    .done(function(post) {
      console.log("success");
      $("#posts").append(post);
    })
    .fail(function() {
      console.log("error");
    })

  })
})
