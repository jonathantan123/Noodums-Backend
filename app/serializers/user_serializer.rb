class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :email_address, :items
end
