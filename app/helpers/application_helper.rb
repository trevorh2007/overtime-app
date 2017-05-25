module ApplicationHelper
	
	def admin_types
		['AdminUser']
	end

	def active?(path)
		"active" if current_page?(path)
	end

	def status_label status
		status_span_generator status
	end

	private

	def status_span_generator status
		case status
			when 'submitted' then content_tag(:span, status.capitalize, class: 'label label-primary')
			when 'approved' then content_tag(:span, status.capitalize, class: 'label label-success')
			when 'rejected' then content_tag(:span, status.capitalize, class: 'label label-danger')
			when 'pending' then content_tag(:span, status.capitalize, class: 'label label-danger')
			when 'confirmed' then content_tag(:span, status.capitalize, class: 'label label-success')
		end
	end
end
