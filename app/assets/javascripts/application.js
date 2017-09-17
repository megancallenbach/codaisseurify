//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require_tree .

function addSong(event) {
  event.preventDefault();
  console.log(this);
  console.log($(event.target).parent().attr("id"));

  var artistId = $(this).parent().attr("id");
  console.log(artistId);
  var songName = $("#song-name").val();
  console.log(songName);

  $.ajax({
    type: "POST",
    url:  "/api/artists/" + artistId + "/songs.json",
    data: JSON.stringify({
        name: songName
    }),
    success: function(data){
      var songName = `<p>${data.name}</p>`;
      var editLink = `<a href="/api/artists/${artistId}/songs/${data.id}/edit" class="btn btn-primary">Edit</a>`;
      var deleteLink = `<a href="/api/artists/${artistId}/songs/${data.id}" data-method="delete" rel="nofollow" class="btn btn-primary delete-song">Delete</a>`;
      var song = `<li id="${data.id}" class="song-name">${songName} ${editLink} ${deleteLink}</li><hr/>`;
      console.log('data',data);
    $(".list-of-songs").append(song);
    },
    contentType: "application/json",
    dataType: "json"
  });
}

function deleteSong(event) {
  event.preventDefault();
  console.log(event);
  var artistId = $(event.target).parent().attr("data-artist-id");
  console.log($(this).parent().parent().parent())
  console.log("Artist Id:" + artistId);
  var songs = $(".list-of-songs");
  var songId = $(event.target).parent().attr("id");
  console.log(songId);

  $.ajax({
    type: "DELETE",
    url: "/api/artists/" + artistId + "/songs/" + songId + ".json",
    contentType: "application/json",
    dataType: "json",
    success: function(data){
      console.log(data);
      $(`#${data.id}`).remove();
      
    },
    error: function(error) {
      console.log(error);
    }
  }).done(reloadPage);
}


$(document).ready(function() {
  $(".delete-song").bind('click', deleteSong);
  // $("input[type=checkbox]").bind('change', toggleDone);
  // $("form").bind('submit', submitsong);
  $("#add-song").bind('click', addSong);

});
