class Todo < ApplicationRecord
  validates :detail, uniqueness: true
  validates :completed, presence: true
end
