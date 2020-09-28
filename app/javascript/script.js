$ (function(){
  $ (window).on("scroll", function(){
    $ ('.select-reason-contents').each(function(index,el){
      if( $(window).scrollTop() > ($ (el).offset().top - $(window).height() / 2 )){
       $(el).addClass('show')
      }
    });
  });
});

$ (function(){
  $ (window).on("scroll", function(){
    $ ('.select-reason-contents>.title').each(function(index,el){
      if( $(window).scrollTop() > ($ (el).offset().top - $(window).height() / 2 )){
       $(el).addClass('show')
      }
    });
  });
});

$ (function(){
  $ (window).on("scroll", function(){
    $ ('.item-contents').each(function(index,el){
      if( $(window).scrollTop() > ($ (el).offset().top - $(window).height() / 2 )){
       $(el).addClass('show')
      }
    });
  });
});

$ (function(){
  $ (window).on("scroll", function(){
    $ ('.list').each(function(index,el){
      if( $(window).scrollTop() > ($ (el).offset().top - $(window).width() /2 )){
       $(el).addClass('show')
      }
    });
  });
});