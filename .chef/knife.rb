raise 'You MUST provide a CHEF_ORGANIZATION' if ENV['CHEF_ORGANIZATION'].nil?
raise 'You MUST provide a CHEF_USER_NAME' if ENV['CHEF_USER_NAME'].nil?
ORG 										= ENV['CHEF_ORGANIZATION']
USER 										= ENV['CHEF_USER_NAME']
current_dir 						= File.dirname(__FILE__)
log_level								:info
log_location						STDOUT
node_name								USER
client_key							"#{current_dir}/#{USER}.pem"
validation_client_name	"#{ORG}-validator"
validation_key					"#{current_dir}/#{ORG}-validator.pem"
chef_server_url					"https://api.opscode.com/organizations/#{ORG}"
cache_type							'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path						["#{current_dir}/../cookbooks"]
