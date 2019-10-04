class CreateSubscriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :subscriptions do |t|
      t.belongs_to :subscriber
      t.belongs_to :feeder

      t.timestamps
    end
  end
end
