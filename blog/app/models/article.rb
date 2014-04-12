class Article < ActiveRecord::Base
  validates :title, presence: true, length: {minimum: 5, maximum: 30}, uniqueness: {case_sensitive: false}
  validates :text, presence: true
end
