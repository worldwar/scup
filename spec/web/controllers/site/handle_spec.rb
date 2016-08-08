require 'spec_helper'
require_relative '../../../../apps/web/controllers/site/handle'

describe Web::Controllers::Site::Handle do
  let(:action) { Web::Controllers::Site::Handle.new }
  let(:params) { Hash[] }
  let(:format) { 'application/json' }

  it 'is successful' do
    # response = action.call(params)
    # response[0].must_equal 200
    # response[1]['Content-Type'].must_equal "#{ format }; charset=utf-8"
    # response[2].must_equal ['{"answer":"pong"}']
  end
end
