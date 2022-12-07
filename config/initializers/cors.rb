

Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins 'https://burgers-blast.netlify.app'
      resource '*',
        headers: :any,
        methods: [:get, :post, :put, :patch, :delete, :options, :head],
        credentials: true
    end
    allow do
      origins 'http://localhost:3001'
      resource '/api/*', headers: :any, methods: [:get, :post, :options, :put, :delete],
      credentials: true
    end
  end
  Y