AddPackage --foreign pdk # Puppet Development Kit bundles tools and helpers to create high quality puppet modules
AddPackage --foreign puppet-editor-services # Language server implementation for puppet
AddPackage --foreign puppet-lint # Check that your Puppet manifests conform to the style guide.
AddPackage --foreign ruby-hiera-eyaml # OpenSSL Encryption backend for Hiera
AddPackage openvox # Server automation framework and application
AddPackage r10k # Provides a general purpose toolset for deploying Puppet environments and modules.

IgnorePath /opt/puppetlabs/pdk/share/cache/\*
