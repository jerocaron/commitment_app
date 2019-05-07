class Proposal < ApplicationRecord
  belongs_to :user
  belongs_to :scope
  has_many :assignements
end
