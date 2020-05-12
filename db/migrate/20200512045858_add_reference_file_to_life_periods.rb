class AddReferenceFileToLifePeriods < ActiveRecord::Migration[5.2]
  def change
    add_reference :life_periods, :reference_file, type: :uuid, foreign_key: true, index: true
  end
end
