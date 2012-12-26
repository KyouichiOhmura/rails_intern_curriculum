class CreateViewTests < ActiveRecord::Migration
  def change
    create_table :view_tests do |t|
      t.text :text

      t.timestamps
    end
  end
end
