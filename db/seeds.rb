20.times do 
  randnum1 = rand(10)
  randnum2 = rand(10)
  result = randnum1 + randnum1 
  Question.create!(question: "What is #{randnum1} + #{randnum2}",
    choices_attributes: [
      {letter: "A", content: (result-2).to_s},
      {letter: "B", content: (result+2).to_s },
      {letter: "C", content: result.to_s }
    ],
    answer: "C"
      )
end
