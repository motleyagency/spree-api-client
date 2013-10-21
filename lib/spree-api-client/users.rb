module Spree
  module API
    class Client
      module Users
        def user(user_id, options={})
          get("users/#{user_id}", options)
        end
        
        def create_user(options={})
          post("users", options)
        end

        def update_users(user_id, options={})
          put("users/#{user_id}", options)
        end

        def create_anonymous_user(options={})
          post("anonymous_users", options)
        end        
      end
    end
  end
end
