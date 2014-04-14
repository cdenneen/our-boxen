require 'spec_helper'

describe 'lync' do
  it do
    should contain_package('Lync_Mac_2011-14.0.6_130930').with({
      :provider => 'pkgdmg',
      :source   => 'https://dl.dropboxusercontent.com/s/7z4ouewkdcnkcyo/Lync_Mac_2011-14.0.6_130930.dmg'
    })
  end
end
