class Article < ActiveRecord::Base
  # validates :title, presence: true, length: { maximum: 255, minimum: 5 }
  # validates :body, presence: true, length: { maximum: 255, minimum: 5 }
  validates :title, presence: true, length: {minimum: 5, maximum: 200}
  validates :description, presence: true, length: {minimum: 5, maximum: 300}
end