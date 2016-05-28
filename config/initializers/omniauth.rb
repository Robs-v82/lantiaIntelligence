Rails.application.config.middleware.use OmniAuth::Builder do 
	provider :google, 'AIzaSyBzvtcM2cUoir4_Kq6o7ZXwRfXPxEWIxIY', '172503291441-oa3e2enfb9m77fopv7j2esagp4pmoku3.apps.googleusercontent.com'
	provider :facebook, '1079866628755196', '9d3b3e2450b79929834bd2ff7fb2cf51'
end
