class CreateAssignements < ActiveRecord::Migration[5.2]
  def change
    create_table :assignements do |t|
      t.references :proposal, foreign_key: true
      t.references :associated_risk, foreign_key: true

      t.timestamps
    end
  end
end
