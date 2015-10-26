module ApplicationHelper
  def test_title
    if @position < @questions_ids.length
      "Question #{@position+1}  of  #{@questions_ids.length}"
    else
      "Test finished"
    end
  end
end
