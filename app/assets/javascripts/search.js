$(document).on('turbolinks:load',function(){
  $(function() {
    $('.search-result-page-header-container li').click(function() {
      var index = $('.search-result-page-header-container li').index(this);
      $('.content li').css('display', 'none');
      $('.content li').eq(index).css('display', 'block');
      $('.search-result-page-header-container li').removeClass('select');
      $(this).addClass('select');
    });
  });
});
