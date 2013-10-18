require 'spec_helper'

describe "pricetool::default" do

	# before do
	#  	Fauxhai.mock(platform:'ubuntu', version:'12.04') do |node|
 #      node['hostname'] = 'server01.example.com'
 #      node['fqdn'] = 'server01.example.com'
 #    end
	# end
	let (:chef_run) { 
		ChefSpec::Runner.new do |node|
			node.set['cpu']['total'] = 2
		end.converge(described_recipe)	
	}
	
	# it "should install curl" do
	# 	expect(chef_run).to install_package('curl')
	# end

	it 'should create user "deploy"' do

		Chef::Recipe.any_instance.stub(:search).with(
			:node, 'role:database_master').and_yield({'hostname' => 'web1.example.com'})

		expect(chef_run).to create_user('deploy')
	end

	it 'should create group "deploy"' do
		 expect(chef_run).to create_group('deploy')
	end

	it 'should install ruby 1.9.3-p448' do
		pending
	end

end
