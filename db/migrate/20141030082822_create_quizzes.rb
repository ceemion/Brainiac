class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.string :question
      t.column "option" :array
      t.string :answer
      t.string :category

      t.timestamps
    end
  end
end
