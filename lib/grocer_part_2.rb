require_relative './part_1_solution.rb'

def apply_coupons(cart, coupons)
  updated_cart = []
  consolidated_cart = consolidate_cart(cart)
  consolidated_cart.each do |current_item|
    if find_item_by_name_in_collection(current_item[:item], coupons)
    
    else 
      updated_cart << current_item 
    end
  end 
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
