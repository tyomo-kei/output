class Resolution < ApplicationRecord
  validates :status, presence: true
  belongs_to :user

  def self.search(search)
    if search != ''
      Resolution.where('erroe_message LIKE(?) OR status LIKE(?)', "%#{search}%", "%#{search}%")
    else
      Resolution.all
    end
  end
end
