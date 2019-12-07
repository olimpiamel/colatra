require "colatra/version"

require "google/cloud/translate"

require "colatra/translation"

module Colatra
  class Error < StandardError; end
    # configuration method to allow access to the Google Translate API
    config.before_configuration do
      env_file = File.join(Rails.root, 'config', 'local_env.yml')
      YAML.load(File.open(env_file)).each do |key, value|
        ENV[key.to_s] = value
      end if File.exists?(env_file)
    end
end