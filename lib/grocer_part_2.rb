require_relative './part_1_solution.rb'
require 'pry'

def apply_coupons(cart, coupons)
  updated_cart = []
  cart.each do |current_item|
    coupon = find_item_by_name_in_collection(current_item[:item], coupons)
    if coupon
      updated_item = current_item 
      updated_item[:count] -= coupon[:num]
      updated_cart << updated_item
      discounted_item = {}
      discounted_item[:item] = "#{current_item[:item]} W/COUPON"
      discounted_item[:price] = coupon[:cost] / coupon[:num]
      discounted_item[:clearance] = current_item[:clearance] 
      discounted_item[:count] = coupon[:num]
      updated_cart << discounted_item
    else 
      updated_cart << current_item 
    end
  end 

  updated_cart
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
