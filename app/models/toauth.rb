module Toauth
	def self.url
		"http://www.soumaisigreja.com/"	
	end

	def self.redirect_url
		if !Rails.env.development?
			'http://www.soumaisigreja.com/toauth'
		else
			'http://www.soumaisigreja.com:3000/toauth'
		end
	end

	def self.client_auth		
		client_id = "ca41ebf5f96d8fac76415b3dbf6750ee6f77ec34bfb3b696af51ac39e431c116"
		client_secret = "53e3c6366e829257282b6dfb2e96fcca6e881c8fbc86aa655656abd993696275"
		user = OAuth2::Client.new(client_id, client_secret, :site => url)
		if user.blank?
			return {error: true}
		end
		user
	end

	def self.auth_url
		client_auth.auth_code.authorize_url(:redirect_uri => redirect_url)
	end

	def self.login(code)
		token = client_auth.auth_code.get_token(code, :redirect_uri => redirect_url)
		return get_user_by_token(token.token)
	end


	def self.usuario_login(cpf, email, token)
		user = User.find_by_cpf(cpf)
		if user.blank?
			senha = SecureRandom.urlsafe_base64(nil, false)
			user = User.create(
				token: token,
				cpf: cpf, 
				email: email, 
				password: senha, 
				password_confirmation: senha
			)
		end
		return user
	end

	def self.logout
		"#{url}usuarios/sign_out"
	end

	def self.get_usuario_by_token(token)
		servidor = JSON.parse(
			RestClient.get("#{url}api/me.json?access_token=#{token}")
		).symbolize_keys
		usuario_login(servidor[:cpf], servidor[:email], token)
	end

	def self.me(token)
		JSON.parse(
			RestClient.get("#{url}api/me.json?access_token=#{token}")
		).symbolize_keys
	end

end
