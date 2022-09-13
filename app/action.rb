# auto_register: false
# frozen_string_literal: true

require "hanami/action"

module Bookshelf
  class Action < Hanami::Action
    def handle(*, response)
      response.body = self.class.name
    end
  end
end
