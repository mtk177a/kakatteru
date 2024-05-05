class CreateHearts < ActiveRecord::Migration[7.1]
  def change
    create_table :hearts do |t|
      t.string :content

      t.timestamps
    end
  end
end
