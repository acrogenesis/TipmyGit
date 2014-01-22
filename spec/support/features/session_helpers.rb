module SessionHelpers
  OmniAuth.config.test_mode = true
  omniauth_hash = { 'provider' => 'github',
                    'uid' => '1312687',
                    'info' => {
                        'name' => 'Adrian Rangel',
                        'email' => 'adrian.rangel@bluehats.mx',
                        'nickname' => 'acrogenesis',
                        'gravatar_id' => '4d574942e2627e5a01262657dda8a299',
                        'public_repos' => 'https://api.github.com/users/acrogenesis/repos'
                    }
  }

  OmniAuth.config.add_mock(:github, omniauth_hash)
end
