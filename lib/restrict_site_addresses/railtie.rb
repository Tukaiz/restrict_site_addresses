module RestrictSiteAddresses
  class Railtie < Rails::Railtie
    initializer "my_railtie.configure_rails_initialization" do |app|
      FeatureBase.register(app, RestrictSiteAddresses)
      FeatureBase.register_autoload_path(app, "restrict_site_addresses")
    end
    config.after_initialize do
      FeatureBase.inject_feature_record("Restrict Site Addresses",
        "RestrictSiteAddresses",
        "This will allow you to define which site addresses are allowed to be used as shipping addressed by a user.  When this feature is enabled, all site addresses will be restricted by default."
      )
      FeatureBase.inject_permission_records(
        RestrictSiteAddresses,
        RestrictSiteAddressesFeatureDefinition.new.permissions
      )
    end
  end
end
