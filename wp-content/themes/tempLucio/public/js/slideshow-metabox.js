jQuery(function($) {
 var file_frame;
$(document).on('click', '#slideshow-metabox a.slideshow-add ', function(e) {

   e.preventDefault();
   console.log(12);
   if (file_frame) file_frame.close();
   file_frame = wp.media.frames.file_frame = wp.media({
      title: $(this).data('uploader-title'),
      button: {
      text: $(this).data('uploader-button-text'),
   },
   multiple: true
 });

file_frame.on('select', function() {
   var listIndex = $('#slideshow-metabox-list li').index($('#slideshow-metabox-list li:last')),
   selection = file_frame.state().get('selection');

selection.map(function(attachment, i) {
   attachment = attachment.toJSON(),
   index = listIndex + (i + 1);
$('#slideshow-metabox-list').append('<li><input type="hidden" name="tdc_gallery_id[' + index + ']" value="' + attachment.id + '"><img class="image-preview" src="' + attachment.sizes.thumbnail.url + '"><a class="change-image button button-small" href="#" data-uploader-title="Change image" data-uploader-button-text="Change image">Đổi hình</a><small><a class="remove-image" href="#">Xóa hình</a></small></li>');
 });
 });
 fnSortable();
 file_frame.open();

});

 $(document).on('click', '#slideshow-metabox a.change-image', function(e) {
  e.preventDefault();
  var that = $(this);
  if (file_frame) file_frame.close();
  file_frame = wp.media.frames.file_frame = wp.media({
     title: $(this).data('uploader-title'),
     button: {
     text: $(this).data('uploader-button-text'),
  },
  multiple: false
  });

  file_frame.on( 'select', function() {
     attachment = file_frame.state().get('selection').first().toJSON();
     that.parent().find('input:hidden').attr('value', attachment.id);
     that.parent().find('img.image-preview').attr('src', attachment.sizes.thumbnail.url);
  });
  file_frame.open();
});
 $(document).on('click', '#slideshow-metabox a.remove-image', function(e) {
   e.preventDefault();
   $(this).parents('li').animate({ opacity: 0 }, 200, function() {
     $(this).remove();
      resetIndex();
    });
 });

 function resetIndex() {
    $('#slideshow-metabox-list li').each(function(i) {
       $(this).find('input:hidden').attr('name', 'tdc_gallery_id[' + i + ']');
    });
}

function fnSortable() {
    $('#slideshow-metabox-list').sortable({
       opacity: 0.6,
       stop: function() {
          resetIndex();
       }
    });
}
});