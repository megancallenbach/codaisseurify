function addSong(event) {
  event.preventDefault();
  var artistId = $(this).parent().attr("id");
  var songName = $("#song-name").val();

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
    $(".list-of-songs").append(song);
    },
    contentType: "application/json",
    dataType: "json"
  });
}

function deleteSong(event) {
  event.preventDefault();
  var artistId = $(event.target).parent().attr("data-artist-id");
  // alert("artist: " + artistId)
  var songs = $(".list-of-songs");
  var songId = $(event.target).parent().attr("id");
  // alert("song Id:" + songId)
  $.ajax({
    type: "DELETE",
    url: "/api/artists/" + artistId + "/songs/" + songId + ".json",
    contentType: "application/json",
    dataType: "json",
    success: function(data){
      // $(`#${songId}`).remove();
      alert(data);
    },
    error: function(error) {
      alert(JSON.stringify(error));
    }
  });
}

function deleteAllSongs(event) {
  event.preventDefault();
  var artistId = location.pathname.split("/").pop();
  var pathName = location.pathname;
  $.ajax({
    type: "DELETE",
    url: pathName + "/songs/remove_multiple.json",
    contentType: "application/json",
    dataType: "json",
    success: function(){
      $(".list-of-songs").children("li").each(function() {
        this.remove();
      });
    },
    error: function(error) {
      // alert(JSON.stringify(error));
    }
  });
}

$(document).ready(function() {
  $(".delete-song").bind('click', deleteSong);
  $("#add-song").bind('click', addSong);
  $(".delete-all-songs").bind('click', deleteAllSongs);
});
