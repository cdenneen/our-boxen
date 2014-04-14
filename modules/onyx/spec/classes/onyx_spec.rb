require 'spec_helper'

describe 'onyx' do

  it { should contain_class('onyx') }
  it { should contain_package('Onyx-2.7.3').with_provider('appdmg') }
  it { should contain_package('Onyx-2.7.3').with_source('https://dl.dropboxusercontent.com/s/vlzwuchby97e6t7/OnyX-2.7.3.dmg') }

end
