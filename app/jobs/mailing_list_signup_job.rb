require 'active_job'

class MailingListSignupJob < ActiveJob::BASE

	def perform(user)
		logger.info "signing up #{user.email}"
		user.subscribe
	end
end