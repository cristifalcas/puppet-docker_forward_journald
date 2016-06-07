require 'spec_helper'
describe 'forward_journald' do

  context 'with defaults for all parameters' do
    it { should contain_class('forward_journald') }
  end
end
