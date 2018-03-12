class Meal < ApplicationRecord
  before_save :_ensure_servings
  
  has_attached_file :image
  
  validates :name,          presence: true
  validates :cost_in_cents, presence: true
  validates_attachment :image,
    :content_type => { :content_type => [ 'image/jpeg', 'image/png'] },
    :size => { :less_than => 1.megabyte }
  
  def cost_in_dollars
    self.cost_in_cents / 100.0
  end
  
  def cost_per_serving
    self.cost_in_cents / (self.servings ? self.servings : 1) / 100.0
  end
  
  private
  
    def _ensure_servings
      unless self.servings.present?
        self.servings = 1
      end
    end
end
