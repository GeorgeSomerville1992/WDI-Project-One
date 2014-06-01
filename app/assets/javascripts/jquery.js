$(document).ready(function(){
  alert('jquery is in the house')
$('#showAlbums').on('click',function(){
    $('#albumDropdown').slideToggle();
  });

$('#showSongs').on('click',function(){
    $('#songDropdown').slideToggle();
  });

// $("#theme").val('Purple',function(){
//   alert('purple');
// });

$('#red').on('click', function(){
  $('head').append('<%= stylesheet_link_tag "themes/angry.css", :media => "all" %>');
  
});
//
// $('select>option:eq(1)').prop('selected', true ,function(){
  
//   $('head').append('<link rel="stylesheet" type="text/css" href="themes/angry.css">');
// });

  

})

