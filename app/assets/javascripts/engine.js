function Exam(){
  var position = gon.position;
  var questions_ids = gon.questions_ids;
  var current_question_id = questions_ids[position];
  var correct = gon.correct;
  var $container = $("#question_container");
  var $test_box = $("#test_box") 
  var _question_tpl = _.template($("#question_tpl").html());
  var _results_tpl = _.template($("#results_tpl").html());
  
  this.init = function(){
    if (position < questions_ids.length) {
      renderQuestion(current_question_id);
    }

    else {
    $test_box.html(_results_tpl({correct: correct, questions_ids: questions_ids}));
    }
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
