json.array!(@quizzes) do |quiz|
  json.extract! quiz, :id, :question, :opt1, :opt2, :opt3, :opt4, :answer, :category
  json.url quiz_url(quiz, format: :json)
end
