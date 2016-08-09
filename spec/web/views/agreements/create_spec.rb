require 'spec_helper'
require_relative '../../../../apps/web/views/agreements/create'

describe Web::Views::Agreements::Create do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/agreements/create.html.erb') }
  let(:view)      { Web::Views::Agreements::Create.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #foo' do
    view.foo.must_equal exposures.fetch(:foo)
  end
end
