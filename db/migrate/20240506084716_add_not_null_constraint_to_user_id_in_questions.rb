class AddNotNullConstraintToUserIdInQuestions < ActiveRecord::Migration[7.1]
  def change
    change_column_null :questions, :user_id, false
  end
end
