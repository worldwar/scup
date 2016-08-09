require 'spec_helper'
require_relative '../../../../apps/web/controllers/agreements/create'

describe Web::Controllers::Agreements::Create do
  let(:action) { Web::Controllers::Agreements::Create.new }
  let(:params) { Hash[agreement: {url: '/ping', http_method: 'GET', response: '{"id":"pong"}'}] }

  before do
  	AgreementRepository.clear
  end

  it 'creates a new agreement' do
  	action.call(params)
  	action.agreement.id.wont_be_nil
  	action.agreement.url.must_equal(params[:agreement][:url])
  end

  it 'redirects user to list agreements' do
    response = action.call(params)
    response[0].must_equal 302
    response[1]['Location'].must_equal '/agreements'
  end
end
