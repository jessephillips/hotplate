class Meal < ApplicationRecord
  validates :name,          presence: true
  validates :cost_in_cents, presence: true
  
  def cost_in_dollars
    self.cost_in_cents / 100.0
  end
  
  def cost_per_serving
    self.cost_in_cents / self.servings / 100.0
  end
end
