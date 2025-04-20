class DashboardController < ApplicationController
  
  before_action :require_pro_plan, only: [:premium_feature] 

  

def index
  @tasks = current_user.tasks
end


def premium_feature
  render plain: "Welcome to the Pro features!"
end


private

def require_pro_plan
  unless current_user.plan == "pro"
    redirect_to authenticated_root_path, alert: "This feature is only available for Pro users."
  end
end

end
