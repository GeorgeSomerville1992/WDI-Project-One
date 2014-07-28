$(function(){
  $('form').submit(function(e){
    e.preventDefault();
    var searchString = encodeURI($("input[name=m]").val());
    var requestUrl = 'http://ws.spotify.com/search/1/track.json?s=' + searchString;
    $.ajax({
      type: "GET", // get request pass arugments directly into the URI
      url: requestUrl,
      dataType: "json"
    }).done(populateSearch) // some knows we have 
    return false; // double varication...
  });


  function populateSearch(data){
  // example contents of data
  // data = {"Search":[{"Title":"Die Hard","Year":"1988","imdbID":"tt0095016","Type":"movie"}, ...]}
  // accessing the key - saying if this key is undefined something wrong happend
  if(data.Search != undefined){
    $("input[name=m]").val("");
    $("#results").empty();

    $.each(data.Search, function(i,song){
      html_string = $("<li><a class='movie-title' data-id='"+movie.imdbID+"'>"+movie.
      Title+"</a>("+movie.Year+")</li>"); 
      html_string = $("<li>" + song.name + "<a class='song-link' href='"+song.href+"'>"+"link to sptotfy"+
        "</a>("+track.track-number+")</li>");
             // the data id put the imdbid inside!
      $("#results").append(html_string)
    })
  }else{
    alert("something wetn wrong");
  }


