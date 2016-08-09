require 'spec_helper'
require_relative '../../../../apps/web/controllers/agreements/new'

describe Web::Controllers::Agreements::New do
  let(:action) { Web::Controllers::Agreements::New.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
