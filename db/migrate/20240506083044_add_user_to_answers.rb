class AddUserToAnswers < ActiveRecord::Migration[7.1]
  def change
    add_reference :answers, :user, null: true, foreign_key: true
  end
end
