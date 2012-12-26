class CreateAs < ActiveRecord::Migration
  def change
    create_table :as do |t|
      t.integer :test

      t.timestamps
    end
  end
end
