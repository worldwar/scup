require 'spec_helper'
require_relative '../../../../apps/web/views/agreements/index'

describe Web::Views::Agreements::Index do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/agreements/index.html.erb') }
  let(:view)      { Web::Views::Agreements::Index.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #foo' do
    view.foo.must_equal exposures.fetch(:foo)
  end
end
