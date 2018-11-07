module ProductHelper
  def show_badge_if_sold_out(product)
    "<div class='sold_out_badge'>Sold Out</div>".html_safe if product.sold_out?
  end

end