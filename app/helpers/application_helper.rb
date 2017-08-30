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

			# title puede ser una clave de options, una traducción en es.yml o se deduce del nombre de la clase
			title = options[:title]
			if title.nil?
				if I18n.exists?("activerecord.models." + model_name + ".other")
					title = I18n.t("activerecord.models." + model_name + ".other").capitalize
				else
					modelos = {"cuenta": "Cuenta"}
					class_name = nil
					if modelos[model_name.to_sym].nil?
						class_name = model_name.classify
					else
						class_name = modelos[model_name.to_sym]
					end
					title = class_name.constantize.model_name.human.pluralize.capitalize
				end
			end

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

	def format_date(date)
		date.strftime('%d/%m/%Y') if date
	end	
end
