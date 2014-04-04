class Article < ActiveRecord::Base
  validates :title, presence: true, uniqueness: true
  validates :slug, uniqueness: true

  before_validation :generate_slug

  def to_param
    slug
  end
  
  def generate_slug
    self.slug ||= title.parameterize if title
  end
end
