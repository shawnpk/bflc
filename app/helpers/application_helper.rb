module ApplicationHelper
  def button_text
    if controller.action_name == "new"
       return "Create Article"
    elsif controller.action_name == "edit"
       return "Update Article"
    else
       return "Submit"
    end
  end

  def flash_class(level)
    case level
    when 'notice' then "alert alert-info"
    when 'success' then "alert alert-success"
    when 'error' then "alert alert-error"
    when 'alert' then "alert alert-error"
    end
  end
end
