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
end
