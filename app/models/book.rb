class Book < ActiveRecord::Base
  scope :cheaper_than, lambda {|i| where 'price < ?', i}

  scope :coming_soon, where(:status => 'coming_soon')
  scope :on_sale, where(:status => 'on_sale')
end
