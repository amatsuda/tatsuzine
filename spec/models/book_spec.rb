require 'spec_helper'

describe Book do
  before do
    Factory :hajicuke
    Factory :hfr
  end
  describe '.cheaper_than' do
    specify { Book.cheaper_than(1000).should have(1).book }
    specify { Book.cheaper_than(4000).should have(2).books }
  end
end
