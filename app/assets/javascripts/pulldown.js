$(document).on('turbolinks:load',function(){
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
        var target = $('menu-search-history');
        break;
    }

    var pulldownDisplay = target.attr('style') == "display: none;" ? "" : "display: none;";

    target.attr('style',pulldownDisplay);
  });
});
