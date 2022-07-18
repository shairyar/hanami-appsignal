# frozen_string_literal: true

require "hanami/application/routes"
require 'appsignal'
module HanamiAppsignal
  class Routes < Hanami::Application::Routes
    define do
      slice :main, at: "/" do
        Appsignal.set_action("GET /homepage")
        root to: "home.show"
      end
    end
  end
end
