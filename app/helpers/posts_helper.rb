module PostsHelper

	def status_label status
		status_span_generator status
	end

	private

	def status_span_generator status
		case status
			when 'submitted' then content_tag(:span, status.capitalize, class: 'label label-primary')
			when 'approved' then content_tag(:span, status.capitalize, class: 'label label-success')
			when 'rejected' then content_tag(:span, status.capitalize, class: 'label label-danger')
		end
	end
end
