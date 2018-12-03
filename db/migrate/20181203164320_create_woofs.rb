class CreateWoofs < ActiveRecord::Migration[5.0]
  def change
    create_table :woofs do |t|
      t.text :text
      t.belongs_to :dog, foreign_key: true
      t.belongs_to :rewoof, foreign_key: false, optional: true

      t.timestamps
    end
  end
end
