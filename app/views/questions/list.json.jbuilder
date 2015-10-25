json.questions do 
  json.array!(Question.all) do |q|
    json.(q, :question, :answer)
    json.choices do 
      json.array!(q.choices) do |c|
        json.(c, :letter, :content)
      end
    end
  end
end
