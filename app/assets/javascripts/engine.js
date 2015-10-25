function Exam(){
  var position = gon.position;
  var questions_ids = gon.questions_ids;
  console.log(gon.questions_ids)
  var current_question_id = questions_ids[position];
  var correct = 0;
  var questions;
  var $container = $("#question_container");
  var _question_tpl = _.template($("#question_tpl").html());
  
  this.init = function(){
    renderQuestion(current_question_id);
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
