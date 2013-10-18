require_relative 'spec_helper'

describe "pricetool::mysql_master" do
	let (:chef_run) { ChefSpec::Runner.new.converge described_recipe }
	
	it 'should install mysql' do
		pending
	end

	it 'should start mysql on boot' do
		expect(chef_run).to start_service 'mysql'
		expect(chef_run).to set_service_to_start_on_boot 'mysql'
	end

end