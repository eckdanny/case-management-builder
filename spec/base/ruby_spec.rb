require './spec/spec_helper'

describe package('nodejs') do
	it { should be_installed }
end

describe package('yarn') do
	it { should be_installed }
end

describe command('node --version') do
	its(:exit_status) { should eq 0 }
end
