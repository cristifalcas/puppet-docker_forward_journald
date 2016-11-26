require 'spec_helper'

describe 'forward_journald' do
  on_supported_os.each do |os, facts|
    context "with defaults on #{os}" do
      let(:facts) do
        facts.merge({:puppetmaster => 'localhost.localdomain'})
      end
      let(:params) { { :ensure_package => 'installed' } }
      it { should compile.with_all_deps }
      it { should contain_class('forward_journald') }
    end
  end
end
