$(document).on('turbolinks:load',function(){

  $(document).click(function(e){
    if (!$(e.target).closest('.pulldownButton').length) {
      $('.pulldowns').each(function(i){
        $(this).attr('style',"display: none;");
      });
    }
  });

  $('.pulldownButton').on('click',function(){

    var switcher = $(this).attr('class').split(' ')[0];

    switch(switcher){
      case 'menu':
        var target = $('#menu-leftside');
        break;

      case 'user-bar':
        var target = $('#menu-user');
        break;

      case 'notification-bar':
        var target = $('#menu-notification');
        break;

      case 'item-pick':
        var target = $('#menu-search-history');
        break;
    }
    var pulldownDisplay = target.attr('style') == "display: none;" ? "" : "display: none;";

    target.attr('style',pulldownDisplay);

    $('.pulldowns').each(function(i){
      if($(this).attr('id') != target.attr('id')){
        $(this).attr('style',"display: none;");
      }
    });

  });
});
