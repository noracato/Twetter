class CreateTwets < ActiveRecord::Migration[5.2]
  def change
    create_table :twets do |t|
      t.belongs_to :user, foreign_key: true
      t.string :message

      t.timestamps
    end
  end
end
