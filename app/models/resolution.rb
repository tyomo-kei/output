class Resolution < ApplicationRecord
  validates :status, presence: true
  belongs_to :user

  def self.search(search)
    if search != ''
      Resolution.where('status LIKE(?)', "%#{search}%")
    else
      Resolution.all
    end
  end
end
