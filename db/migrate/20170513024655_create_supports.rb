class CreateSupports < ActiveRecord::Migration[5.0]
  def change
    create_table :supports do |t|
      t.references :idea, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
    add_index :supports, :idea
    add_index :supports, :user
    add_index :supports, [:idea, :user], unique: true
  end
end
