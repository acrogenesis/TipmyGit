OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  if Rails.env.production?
    provider :github, ENV['GITHUB_KEY'], ENV['GITHUB_SECRET'], scope: "user:email"
  else
    provider :github, '8d8f78cdd4842c37cf20', '11615684e5c7e722af1206f63d89cbfff636c409', scope: "user:email"
  end

  OmniAuth.config.on_failure = PageController.action(:homepage)
end
