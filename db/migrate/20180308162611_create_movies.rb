class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :imdbID
      t.string :year
      t.string :poster
      t.string :genre
      t.string :runtime
      t.string :director
      t.text :plot

      t.timestamps
    end
  end
end
