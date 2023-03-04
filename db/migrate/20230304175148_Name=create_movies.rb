class Name=createMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :genre
      t.string :description
      t.string :year
      t.string :runtime
      t.timestamp :release_date
    end
  end
end
