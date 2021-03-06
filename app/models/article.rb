class Article < ApplicationRecord
  validates :content, presence: true
  belongs_to :user

  def self.search(search)
    if search != ''
      Article.where('content LIKE(?)', "%#{search}%")
    else
      Article.all
    end
  end

end
