class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.date :premiere_date
      t.string :length
      t.string :genres, :array => true, :default => '{}'
      t.string :director
      t.string :screenwriter
      t.string :country
      t.text :text

      t.timestamps
    end
  end
end
