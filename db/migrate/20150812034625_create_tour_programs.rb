class CreateTourPrograms < ActiveRecord::Migration
  def change
    create_table :tour_programs do |t|
      t.string :title
      t.text :program_details

      t.timestamps
    end
  end
end
