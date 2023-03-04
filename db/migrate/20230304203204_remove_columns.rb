class RemoveColumns < ActiveRecord::Migration[6.1]
  def change
    remove_column :movies, :genre
    remove_column :movies, :release_date
  end
end
