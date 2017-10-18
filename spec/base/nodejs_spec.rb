require './spec/spec_helper'

describe command('ruby --version') do
	its(:exit_status) { should eq 0 }
end

describe command('bundler --version') do
	its(:exit_status) { should eq 0 }
end
