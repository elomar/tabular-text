# encoding: utf-8

module TabularText
end

require 'tabular-text/field'
require 'tabular-text/line'
require 'tabular-text/builder'
require 'tabular-text/handler'

require 'action_controller'

ActionController::Renderers.add :tabular do |filename, options|
  data = render_to_string options.merge(layout: false)
  send_data data, filename: filename, attachment: "disposition", type: 'text/plain'
end

require 'action_view/template'

ActionView::Template.register_template_handler :tab, TabularText::Handler

