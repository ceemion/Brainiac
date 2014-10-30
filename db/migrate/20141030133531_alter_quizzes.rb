class AlterQuizzes < ActiveRecord::Migration
  def up
  	add_column("quizzes", "opt1", :string, :limit => 30, :after => "option")
  	add_column("quizzes", "opt2", :string, :limit => 30, :after => "opt1")
  	add_column("quizzes", "opt3", :string, :limit => 30, :after => "opt2")
  	add_column("quizzes", "opt4", :string, :limit => 30, :after => "opt3")
  end

  def down
  end
end
