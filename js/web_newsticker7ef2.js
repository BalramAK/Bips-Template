!function(N){function y(e,t){return parseInt(N.css(e[0],t))||0}N.fn.jCarouselLite=function(w){return w=N.extend({btnPrev:null,btnNext:null,btnGo:null,mouseWheel:!1,auto:null,hoverPause:!1,speed:200,easing:null,vertical:!1,circular:!0,visible:3,start:0,scroll:1,beforeStart:null,afterEnd:null},w||{}),this.each(function(){var t=!1,n=w.vertical?"top":"left",e=w.vertical?"height":"width",i=N(this),l=N("ul",i),r=N("li",l),s=r.size(),c=w.visible;w.circular&&(l.prepend(r.slice(s-c+1).clone()).append(r.slice(0,w.scroll).clone()),w.start+=c-1);var o=N("li",l),a=o.size(),u=w.start;i.css("visibility","visible"),o.css({overflow:"hidden",float:w.vertical?"none":"left"}),l.css({margin:"0",padding:"0",position:"relative","list-style-type":"none","z-index":"1"}),i.css({overflow:"hidden",position:"relative","z-index":"2",left:"0px"});var f,v,h,d=w.vertical?(v=o)[0].offsetHeight+y(v,"marginTop")+y(v,"marginBottom"):(f=o)[0].offsetWidth+y(f,"marginLeft")+y(f,"marginRight"),b=d*a,p=d*c;function x(){g(),h=setInterval(function(){P(u+w.scroll)},w.auto+w.speed)}function g(){clearInterval(h)}function m(){return o.slice(u).slice(0,c)}function P(e){if(!t){if(w.beforeStart&&w.beforeStart.call(this,m()),w.circular)e<0?(l.css(n,-(u+s)*d+"px"),u=e+s):a-c<e?(l.css(n,-(u-s)*d+"px"),u=e-s):u=e;else{if(e<0||a-c<e)return;u=e}t=!0,l.animate("left"==n?{left:-u*d}:{top:-u*d},w.speed,w.easing,function(){w.afterEnd&&w.afterEnd.call(this,m()),t=!1}),w.circular||(N(w.btnPrev+","+w.btnNext).removeClass("disabled"),N(u-w.scroll<0&&w.btnPrev||u+w.scroll>a-c&&w.btnNext||[]).addClass("disabled"))}return!1}o.css({width:o.width(),height:o.height()}),l.css(e,b+"px").css(n,-u*d),i.css(e,p+"px"),w.btnPrev&&(N(w.btnPrev).click(function(){return P(u-w.scroll)}),w.hoverPause&&N(w.btnPrev).hover(function(){g()},function(){x()})),w.btnNext&&(N(w.btnNext).click(function(){return P(u+w.scroll)}),w.hoverPause&&N(w.btnNext).hover(function(){g()},function(){x()})),w.btnGo&&N.each(w.btnGo,function(e,t){N(t).click(function(){return P(w.circular?w.visible+e:e)})}),w.mouseWheel&&i.mousewheel&&i.mousewheel(function(e,t){return P(0<t?u-w.scroll:u+w.scroll)}),w.auto&&(w.hoverPause&&i.hover(function(){g()},function(){x()}),x())})}}(jQuery);