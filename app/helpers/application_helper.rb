module ApplicationHelper
	def link_to_menu
		list = li(model_name: "tipo_transaccion")
		list += li(model_name: "transaccion")
		list += li(model_name: "movimiento")
		list += li(model_name: "cuenta")
		content_tag(:ul, list, {class: "nav nav-tabs nav-justified", style: "margin: 0;"})
	end

	def li(options)
			model_name   = options[:model_name]	|| ""
			title        = options[:title] || model_name.titleize.pluralize
			controller   = options[:controller] || model_name.pluralize
			url          = options[:url] || url_for(controller: controller, action: "index")
			html_options = options[:html_options] || {}
			parent_of 	 = options[:parent_of] || {}
			model_as_key = "#{model_name}_id".to_sym
			if controller.kind_of?(String)
				all_controllers = [controller]
			else
				all_controllers = controller
			end
			if parent_of.kind_of?(String)
				parent_of = [parent_of]
			end
			content = ""
			if (parent_of.include?(request[:controller]) and params.has_key?(model_as_key)) or
						all_controllers.include?(request[:controller])
				html_options.reverse_merge!({class: 'active'})
				content = link_to(title, "#")
			else
				content = link_to(title, url)
			end
			content_tag(:li, content, html_options)
	end

private
	def add_content(model)
		if params[:controller] == model.model_name.name + "Controller"
			content += content_tag(:li, link_to(model.model_name.human, path), class: "active")
		else
			content += content_tag(:li, link_to("Cuentas", cuentas_path))
		end		
	end
end
