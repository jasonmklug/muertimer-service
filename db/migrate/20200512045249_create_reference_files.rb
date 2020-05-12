class CreateReferenceFiles < ActiveRecord::Migration[5.2]
  def change
    create_table :reference_files, id: :uuid do |t|
      t.integer :year_of_report, null: false
      t.string :sex, null: false
      t.string :race, null: false
      t.string :origin, null: false
      t.string :url
      t.string :title

      t.timestamps
    end
  end
end
