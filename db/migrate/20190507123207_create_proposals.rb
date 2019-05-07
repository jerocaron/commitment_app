class CreateProposals < ActiveRecord::Migration[5.2]
  def change
    create_table :proposals do |t|
      t.string :type
      t.string :name
      t.string :description
      t.string :status
      t.date :deadline

      t.timestamps
    end
  end
end
