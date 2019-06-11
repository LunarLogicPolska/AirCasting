# Be sure to restart your server when you modify this file.

# Avoid CORS issues when API is called from the frontend app.
# Handle Cross-Origin Resource Sharing (CORS) in order to accept cross-origin AJAX requests.

# Read more: https://github.com/cyu/rack-cors

Rails.application.config.middleware.insert_before 0,
                                                  Rack::Cors,
                                                  debug: false,
                                                  logger:
                                                    (-> { Rails.logger }) do
  allow do
    origins '*'

    resource '/api/*',
             headers: :any,
             methods: %i[get post patch delete put options head],
             max_age: 0

    resource '/autocomplete/*',
             headers: :any,
             methods: %i[get post patch delete put options head],
             max_age: 0
  end
end
