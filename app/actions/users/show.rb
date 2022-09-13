# frozen_string_literal: true

module Bookshelf
  module Actions
    module Users
      class Show < Bookshelf::Action
        def handle(*, response)
          Appsignal.set_action("GET Users#Show")
          response.body = self.class.wrong_name
        end
      end
    end
  end
end
