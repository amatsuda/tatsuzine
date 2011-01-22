class Book < ActiveRecord::Base
  scope :cheaper_than, lambda {|i| where 'price < ?', i}
end
