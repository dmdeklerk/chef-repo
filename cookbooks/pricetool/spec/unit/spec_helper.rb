# spec_helper.rb
require 'chefspec'
require 'chefspec/berkshelf'

RSpec.configure do |config|
  # Specify the path for Chef Solo to find cookbooks (default: [inferred from
  # the location of the calling spec file])
  #config.cookbook_path = '/var/cookbooks'

  # Specify the Chef log_level (default: :warn)
  #config.log_level = :debug

  # Specify the path to a local JSON file with Ohai data (default: nil)
  #config.path = File.join(File.dirname(__FILE__), 'ohai.json')

  # Specify the operating platform to mock Ohai data from (default: nil)
  config.platform = 'ubuntu'

  # Specify the operating version to mock Ohai data from (default: nil)
  config.version = '12.04'
end