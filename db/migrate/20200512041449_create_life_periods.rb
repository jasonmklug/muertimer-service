class CreateLifePeriods < ActiveRecord::Migration[5.2]
  def change
    create_table :life_periods, id: :uuid do |t|
      t.integer :age_in_years, null: false
      t.float :probability_of_dying_at_age, null: false
      t.integer :number_surviving_to_age, null: false
      t.integer :number_dying_at_age, null: false
      t.integer :expected_years_remaining_at_age, null: false

      t.timestamps
    end
  end
end
