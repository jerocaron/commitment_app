class AddScopeToProposals < ActiveRecord::Migration[5.2]
  def change
    add_reference :proposals, :scope, foreign_key: true
  end
end
