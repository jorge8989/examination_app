  json.(@question, :question, :answer)
  json.choices do 
    json.array!(@question.choices) do |c|
      json.(c, :letter, :content)
    end
  end
