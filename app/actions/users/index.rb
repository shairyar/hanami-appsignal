# frozen_string_literal: true

module Bookshelf
  module Actions
    module Users
      class Index < Bookshelf::Action
        def handle(*, response)
          Appsignal.set_action("GET Users#Index")
          response.body = self.class.name
        end
      end
    end
  end
end
