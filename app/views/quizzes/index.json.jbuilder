json.array!(@quizzes) do |quiz|
  json.extract! quiz, :id, :question, :options, :answer, :category
  json.url quiz_url(quiz, format: :json)
end
