# Editors
AddPackage --foreign vscodium-bin # Binary releases of VS Code without MS branding/telemetry/licensing.

# tools
AddPackage jq # Command-line JSON processor
AddPackage yq # Command-line YAML, XML, TOML processor - jq wrapper for YAML/XML/TOML documents
AddPackage git-crypt # Transparent file encryption in Git

# Versionning
AddPackage lazygit # Simple terminal UI for git commands

# lxc
AddPackage lxc # Linux Containers

# Python
AddPackage uv # An extremely fast Python package installer and resolver written in Rust

# Ruby
AddPackage ruby # An object-oriented language for quick and easy programming
AddPackage ruby-bundler # Manages an application's dependencies through its entire life, across many machines, systematically and repeatably
AddPackage ruby-irb # Interactive Ruby command-line tool for REPL (Read Eval Print Loop).
AddPackage ruby-rake # Make-like build tool implemented in Ruby
AddPackage ruby-term-ansicolor # A ruby library that colors strings using ANSI escape sequences

# Puppet
AddPackage --foreign pdk # Puppet Development Kit bundles tools and helpers to create high quality puppet modules
AddPackage --foreign puppet-lint # Check that your Puppet manifests conform to the style guide.
AddPackage --foreign ruby-hiera-eyaml # OpenSSL Encryption backend for Hiera
AddPackage puppet # Server automation framework and application
AddPackage r10k # Provides a general purpose toolset for deploying Puppet environments and modules.

# Containers
AddPackage buildah # A tool which facilitates building OCI images
AddPackage podman # Tool and library for running OCI-based containers in pods
