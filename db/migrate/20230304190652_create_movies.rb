class CreateMovies < ActiveRecord::Migration[6.1]
  def change

    create_table :movies do |t|
    t.string :title
    t.string :poster
    t.string :genre
    t.string :description
    t.integer :year
    t.string :runtime
    t.date :release_date
    t.timestamps
    end

  end
end
