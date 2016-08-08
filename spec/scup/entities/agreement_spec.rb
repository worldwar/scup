require 'spec_helper'

describe Agreement do
  # place your tests here
  it 'can be initialised with attributes' do
    agreement = Agreement.new(url: '/company/product/1')
    agreement.url.must_equal '/company/product/1'
  end
end
