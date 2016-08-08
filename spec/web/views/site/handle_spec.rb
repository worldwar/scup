require 'spec_helper'
require_relative '../../../../apps/web/views/site/handle'

describe Web::Views::Site::Handle do
  let(:exposures) { Hash[foo: 'bar'] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/site/handle.html.erb') }
  let(:view)      { Web::Views::Site::Handle.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #foo' do
    view.foo.must_equal exposures.fetch(:foo)
  end
end
