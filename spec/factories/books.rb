Factory.define :book do |f|
  f.title 'book'
  f.price 1000
end

Factory.define :hajicuke, :parent => :book do |f|
  f.title 'はじめるCucumber'
  f.price 980
end

Factory.define :hfr, :parent => :book do |f|
  f.title 'Head First Rails'
  f.price 3990
end
