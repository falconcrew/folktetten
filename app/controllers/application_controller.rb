class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  helper_method :current_user
  helper_method :get_next_performance
  helper_method :get_month
  
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  
  def get_next_performance
    performances = Performance.all
    if !performances.empty?
      next_perf = Performance.first
      next_perf_date = Date.new(next_perf.year, next_perf.month, next_perf.day)
      performances.each do |perf|
        perf_date = Date.new(perf.year, perf.month, perf.day)
        if perf_date < next_perf_date
          next_perf_date = perf_date
          next_perf = perf
        end
      end
      @performance = next_perf
    else
      nil
    end
  end
  
  def get_month(num)
    months = ["Januari","Februari","Mars","April","Maj","Juni","Juli","Augusti","September","Oktober","November","December"]
    month = months[num]
  end
  
  def require_user
    redirect_to "/login" unless current_user
  end
  
  def require_editor
    redirect_to "/" unless current_user && current_user.editor?
  end
  
  def require_admin
    redirect_to "/" unless current_user && current_user.admin?
  end
  
end
