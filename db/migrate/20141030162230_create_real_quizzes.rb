class CreateRealQuizzes < ActiveRecord::Migration
  def change
    create_table :real_quizzes do |t|
      t.string :quiz_name, :limit => 30
      t.integer :user_id

      t.timestamps
    end
  end
end
