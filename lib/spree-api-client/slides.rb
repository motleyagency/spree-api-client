module Spree
  module API
    class Client
      module Slides
        def slides(options={})
          get("slides", options)['slides']
        end
      end
    end
  end
end