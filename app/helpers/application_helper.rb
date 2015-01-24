module ApplicationHelper
  def check_isadmin?
    unless current_user.try(:admin?)
      redirect_to new_user_session_path
    end
  end  
  def is_active_page?(link_path)
    if current_page?(link_path)
      return "active" if request.query_parameters.empty?     
    else
      ""
    end    
  end
end
