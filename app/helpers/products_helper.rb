module ProductsHelper
  def product_owner(product)
    user_signed_in? && product.user == current_user
  end
end
