# frozen_string_literal: true

module Bookshelf
  class Routes < Hanami::Routes
    define do
      root { "Hello from Hanami" }
      get "/users/:id", to: "users.show"
      get "/users", to: "users.index"
    end
  end
end
