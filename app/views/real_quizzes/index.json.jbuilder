json.array!(@real_quizzes) do |real_quiz|
  json.extract! real_quiz, :id, :quiz_name, :user_id
  json.url real_quiz_url(real_quiz, format: :json)
end
