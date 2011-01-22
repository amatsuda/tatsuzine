require 'spec_helper'

describe Book do
  before do
    @hajicuke = Factory :hajicuke
    @hfr = Factory :hfr
  end
  describe '.cheaper_than' do
    subject { Book.cheaper_than(self.class.description) }
    context('1000') { it { should have(1).book }}
    specify { Book.cheaper_than(4000).should have(2).books }
  end

  describe '.coming_soon' do
    specify { Book.coming_soon.should have(1).book }
    subject { Book.coming_soon }
    its(:first) { should == @hfr }
  end
end
