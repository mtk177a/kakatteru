class AddNotNullConstraintToUserIdInHearts < ActiveRecord::Migration[7.1]
  def change
    change_column_null :hearts, :user_id, false
  end
end
