# Load application-specific configuration from config/app_config.yml.
# Access the config params via APP_CONFIG['param']
APP_CONFIG = YAML.load_file("#{Rails.root}/config/app_config.yml")
