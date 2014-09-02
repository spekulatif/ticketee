class Admin::BaseController < ApplicationController
  before_action :authorize_admin!, :require_signin!
	
	def index
	end
end