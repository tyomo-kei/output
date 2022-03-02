class Error < ApplicationRecord
  validates :erroe_message, presence: true
  validates :language, presence: true
  validates :status, presence: true
  validates :code, presence: true
  validates :cauce, presence: true
  belongs_to :user
end
