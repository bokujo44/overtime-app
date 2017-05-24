class AuditLogsController < ApplicationController
  def index
	@audit_logs = Auditlog.all
  end
end
