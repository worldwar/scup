require 'spec_helper'
require_relative '../../../../apps/web/controllers/agreements/index'

describe Web::Controllers::Agreements::Index do
  let(:action) { Web::Controllers::Agreements::Index.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
