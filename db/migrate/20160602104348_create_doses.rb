class CreateDoses < ActiveRecord::Migration
  def change
    create_table :doses do |t|
      t.timestamps null: false
    end
  end
end
