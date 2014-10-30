class CreateQuizzes < ActiveRecord::Migration
  def up
    create_table :quizzes do |t|
      t.string :question
      t.column "option", :array
      t.string :answer
      t.string :category

      t.timestamps
    end

    def down
    	t.timestamps
    	t.string :category
    	t.string :answer
    	t.column "option", :array
    	t.string :question
    drop_table("quizzes")
    end
  end
end
