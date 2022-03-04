class Resolution < ApplicationRecord
  validates :erroe_message, presence: true
  validates :language, presence: true
  validates :status, presence: true
  validates :code, presence: true
  validates :cauce, presence: true
  belongs_to :user

  def self.search(search)
    if search != ""
      Resolution.where('erroe_message LIKE(?) OR status LIKE(?)', "%#{search}%", "%#{search}%")
    else
      Resolution.all
    end
  end
end
