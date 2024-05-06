class AddUserToHearts < ActiveRecord::Migration[7.1]
  def change
    add_reference :hearts, :user, null: true, foreign_key: true
  end
end
