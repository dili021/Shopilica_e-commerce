class Cart < ApplicationRecord
  has_many :line_items, dependent: :destroy

  def add_product(product)
    current_product = line_items.find_by(product_id: product.id)
    if current_product
      current_product.increment(:quantity)
    else
      current_product = line_items.new(product_id: product.id)
    end
    current_product
  end

  def remove_product(product)
    current_product = line_items.find_by(product_id: product.id)
    if current_product
      current_product.decrement(:quantity)
    else
      current_product = line_items.new(product_id: product.id)
    end
    current_product
  end

  def total_price
    line_items.to_a.sum(&:total_price)
  end
end
