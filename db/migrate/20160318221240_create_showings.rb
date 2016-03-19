class CreateShowings < ActiveRecord::Migration
  def change
    create_table :showings do |t|
      t.datetime :start_time
      t.integer :movie_id
      t.integer :auditorium_id

      t.timestamps null: false
    end
  end
end
