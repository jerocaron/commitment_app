class CreateAssociatedRisks < ActiveRecord::Migration[5.2]
  def change
    create_table :associated_risks do |t|
      t.string :description
      t.integer :frequency
      t.integer :impact
      t.integer :detection
      t.integer :rating

      t.timestamps
    end
  end
end
