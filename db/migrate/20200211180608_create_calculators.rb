class CreateCalculators < ActiveRecord::Migration[6.0]
  def change
    create_table :calculators do |t|
      t.float :height
      t.float :weight

      t.timestamps
    end
  end
end
