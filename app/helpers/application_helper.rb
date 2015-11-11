module ApplicationHelper
  def link_to_add_fields(name, f, association)
    new_object = f.object.send(association).klass.new
    id = new_object.object_id
    fields = f.fields_for(association, new_object, child_index: id) do |builder|
      render(association.to_s.singularize + "_fields", f: builder)
    end
    link_to(name, '#', class: "add_fields", data: {id: id, fields: fields.gsub("\n", "")})
  end
  def notice_message
   alert_types = { notice: :success, alert: :danger }

   close_button_options = { class: "close", "data-dismiss" => "alert", "aria-hidden" => true }
   close_button = content_tag(:button, "×", close_button_options)

   alerts = flash.map do |type, message|
     alert_content = close_button + message

     alert_type = alert_types[type.to_sym] || type
     alert_class = "alert alert-#{alert_type} alert-dismissable"

     content_tag(:div, alert_content, class: alert_class)
   end

   alerts.join("\n").html_safe
 end
end
