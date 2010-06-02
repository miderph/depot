# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def clear_error_message_on(object, method, prepend_text ="", append_text ="", css_class = "formError")
    if errors = instance_variable_get("@#{object}").errors.on(method)
      "#{prepend_text}#{errors.is_a?(Array) ? errors.first : errors}#{append_text}"
    end
  end
end
