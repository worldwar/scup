require 'spec_helper'
require_relative '../../../../apps/web/controllers/agreements/greeting'

describe Web::Controllers::Agreements::Greeting do
  let(:action) { Web::Controllers::Agreements::Greeting.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
