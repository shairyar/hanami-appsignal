# frozen_string_literal: true

require "hanami/boot"
require 'appsignal'                           # Load AppSignal

Appsignal.config = Appsignal::Config.new(
  File.expand_path('../', __FILE__),          # Application root path
  'development'                           # Application environment
)

Appsignal.start                               # Start the AppSignal integration
Appsignal.start_logger

run Hanami.rack_app
