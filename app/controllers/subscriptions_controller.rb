
class SubscriptionsController < ApplicationController
  before_action :authenticate_user!

  def free
    current_user.update(plan: "free")
    redirect_to dashboard_index_path, notice: "Switched to Free plan."
  end

  def pro
    current_user.update(plan: "pro")
    redirect_to dashboard_index_path, notice: "Switched to Pro plan."
  end
end
