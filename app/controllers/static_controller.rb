class StaticController < ApplicationController
  def homepage
  	@pending_approvals = Post.submitted
  	if admin_types.include?(current_user.type)
  		@recent_audit_items = AuditLog.pending.last(10)
  	else
  		@pending_audit_confirmations = current_user.audit_logs.pending
  	end
  end
end