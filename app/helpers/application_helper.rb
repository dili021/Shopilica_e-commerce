module ApplicationHelper

  def cart_item_count
    if @cart.line_items.size > 0
      "<span class=' text-white 
                    rounded font-bold'>
        #{item_count}
       </span>".html_safe
    end
  end

  def item_count
    item_num  = 0
    @cart.line_items.each do |item|
      item_num += item.quantity
    end
    item_num
    end
end
