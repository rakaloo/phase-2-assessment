$(document).ready(function() {
  $("#post_form").on("submit", function(event) {
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
    });
  });

  $("#posts").on("submit", ".post_like", function(event) {
    event.preventDefault();
    var form = $(this);

    $.ajax({
      url: form.attr("action"),
      type: "POST",
      data: form.serialize(),
    })
    .done(function(likeCount) {
      console.log("success");
      form.siblings(".post_details").find(".like_count").text(likeCount);
    })
    .fail(function() {
      console.log("error");
    });
  });
});
