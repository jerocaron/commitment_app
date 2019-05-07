class Company < ApplicationRecord
  has_many :groups, dependent: :destroy
end
