class StaticController < ApplicationController
  def homepage
  	@pending_approvals = Post.submitted
  	if admin_types.include?(current_user.type)
  		@recent_audit_items = AuditLog.pending.last(10)
  		@recent_confirmed_audit_items = AuditLog.order('updated_at DESC').confirmed.last(10)
  	else
  		@pending_audit_confirmations = current_user.audit_logs.pending.by_start_date
  	end
  end
end