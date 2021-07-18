require 'dry/system/container'
require 'dry/system/hanami'

# General container class for project dependencies
#
# {http://dry-rb.org/gems/dry-system/ Dry-system documentation}
class Container < Dry::System::Container
  extend Dry::System::Hanami::Resolver

  use :env

  configure do |config|
    config.env = Hanami.env
  end
end
