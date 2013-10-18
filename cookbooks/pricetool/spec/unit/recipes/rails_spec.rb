require_relative 'spec_helper'

describe "pricetool::mysql_master" do
	let (:chef_run) { ChefSpec::Runner.new.converge described_recipe }
	
	it 'should create directories "tmp public config pids log"' do
		pending
	end

end