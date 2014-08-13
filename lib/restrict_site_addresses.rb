require "restrict_site_addresses/version"

module RestrictSiteAddresses
  class RestrictSiteAddressesFeatureDefinition
    include FeatureSystem::Provides
    def permissions
      [
        {
          can: true,
          callback_name: 'can_manage_site_address_users',
          name: 'Can Manage Site Addresses a User has access to.'
        }
      ]
    end
  end

  module Authorization
    module Permissions
    end
  end
end

require 'restrict_site_addresses/railtie' if defined?(Rails)
