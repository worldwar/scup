require 'features_helper'

describe 'agreements' do
  after do
    AgreementRepository.clear
  end

  it 'can create a new agreement' do
  	visit '/agreements/new'

  	within 'form#agreement-form' do
  		fill_in 'Url', with: '/ping'
  		fill_in 'Http method', with: 'GET'
  		fill_in 'Response', with: '{"id":"pong"}'
  		click_button 'Create'
  	end
  	current_path.must_equal('/agreements')
  	assert page.has_content?('/ping')
  end
end