require 'spec_helper'

describe 'sizeup' do
  it do
    should contain_package('SizeUp').with({
      :source   => 'http://www.irradiatedsoftware.com/download/SizeUp.zip',
      :provider => 'compressed_app'
    })
  end
end
