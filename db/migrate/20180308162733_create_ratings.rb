class CreateRatings < ActiveRecord::Migration[5.1]
  def change
    create_table :ratings do |t|
      t.integer :score

      t.belongs_to :user, index: true
      t.belongs_to :movie, index: true
      t.timestamps
    end
  end
end
