class FixResponseTable < ActiveRecord::Migration
  def change
    remove_column :responses, :question_id
    add_column :responses, :answer_choice_id, :integer, null: false
  end
end
