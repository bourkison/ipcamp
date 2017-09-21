OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
	provider :facebook, '152748771981103', '16497ca1ea7e4ebdf7878dcc4f532a83'
end
