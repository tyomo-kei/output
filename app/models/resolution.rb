class Resolution < ApplicationRecord
  validates :erroe_message, presence: true
  validates :language, presence: true
  validates :status, presence: true
  validates :code, presence: true
  validates :cauce, presence: true
  belongs_to :user

  def self.search(search)
    if search != ""
      Error.where('erroe_message LIKE(?) OR status LIKE(?)', "%#{search}%", "%#{search}%")
    else
      Error.all
    end
  end
end
