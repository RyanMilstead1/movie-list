class CreateListMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :list_movies do |t|
      t.belongs_to :list, index: true
      t.belongs_to :movie, index: true
    end
  end
end
