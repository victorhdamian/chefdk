require 'spec_helper'

describe 'myapp::default' do
  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html
  it 'does something' do
    skip 'Replace this with meaningful tests'
  end
end

describe package('httpd') do
  it { should be_installed }
end

describe service('httpd') do
  it { should be_running }
end

describe port(80) do
	it { should be_listening}
end

describe file('/var/www/html/index.html') do
	it { should contain 'Hello'}
