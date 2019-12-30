class OrderSerializer
  include FastJsonapi::ObjectSerializer
  attributes :items
end
