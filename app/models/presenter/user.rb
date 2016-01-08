module Presenter
  class User < SimpleDelegator
    def github_json_url
      "https://api.github.com/user/#{github_id}"
    end

    def admin?
      Admins.verify?(model.github_id)
    end

    def model
      __getobj__
    end
  end
end
