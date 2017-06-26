require 'minitest/autorun'
require 'minitest/growl_notify'

describe 'fake tests' do
  100.times do |i|
    it '100 must always be 100, test no. #{i}' do
      100.must_equal 100
    end
  end

  it 'compares foo to bar' do
    'foo'.must_equal 'bar'
  end

  it 'skips tests' do
    skip 'for later work'
  end
end
