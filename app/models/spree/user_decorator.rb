# User.class_eval do
#   has_many :payments, :through => :orders
# end
# Added conditional for custom User class, also specified classname for payments
if defined?(User)
    klass = User
else
    klass = Spree::User
end
klass.class_eval do
   has_many :payments, class_name: 'Spree::Payment', :through => :orders
end
