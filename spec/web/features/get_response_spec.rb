require 'features_helper'

describe 'get response' do
  before do
    AgreementRepository.clear

    AgreementRepository.create(Agreement.new(url: 'ping', http_method: 'GET', response: '{"id":"pong"}'))
    AgreementRepository.create(Agreement.new(url: 'hello', http_method: 'POST', response: '["world"]'))
  end

  it 'get response for given url' do
    visit '/site/ping'
    assert page.html.eql?('{"id":"pong"}'), 'Expected response mapped by agreement'
  end
end