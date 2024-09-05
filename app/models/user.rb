class User < ApplicationRecord
  validates :first_name, presence: true
  validates :gender, presence: true
end
