require 'spec_helper'
require_relative '../../../../apps/web/views/agreements/greeting'

describe Web::Views::Agreements::Greeting do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/agreements/greeting.html.erb') }
  let(:view)      { Web::Views::Agreements::Greeting.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #foo' do
    view.foo.must_equal exposures.fetch(:foo)
  end
end
