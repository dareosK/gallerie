class SandboxController < ApplicationController
  layout "sandbox" # Uses specific layout for everything controlled by this Controller
  skip_before_action :authenticate_user!, only: :show
  skip_after_action :verify_authorized
  skip_after_action :verify_policy_scoped

  def show
  end
end
