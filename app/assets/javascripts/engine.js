function Exam(){
  var pos = $("#pos").data('pos');
  var correct = 0;
  var questions;
  var $container = $("#question_container");
  var _question_tpl = _.template($("#question_tpl").html());
  
  this.init = function(){
    renderQuestion(1);
  }
  function renderQuestion(question_id){
    $.ajax({
      type: 'get',
      dataType: 'json',
      url: '/get_question',
      data: {id: question_id},
      success: function(data){
        $container.html(_question_tpl(data));
      }
    })
  }
}
$(function(){
  if ($(".question_container").length > 0) {
    new Exam().init();
  }
})
