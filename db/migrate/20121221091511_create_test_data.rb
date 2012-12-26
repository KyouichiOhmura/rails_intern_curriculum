class CreateTestData < ActiveRecord::Migration
  def change
    create_table :test_data do |t|
      t.integer :a
      t.text :t

      t.timestamps
    end
  end
end
