class OrderSerializer
  include FastJsonapi::ObjectSerializer
  attributes :items, :order_items, :total_price, :subtotal
end
