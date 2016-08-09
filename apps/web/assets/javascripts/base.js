// $(document).ready(function(){
    hljs.initHighlightingOnLoad();
// });

$(document).ready(function() {
  $('textarea').each(function(i, block) {
    hljs.highlightBlock(block);
  });
});