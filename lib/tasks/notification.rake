namespace :notification do
  desc "Send a notification to employees to ask whether they had overtime or not"
  task sms: :environment do
  	# 1. Schedule to run at Sunday at 5pm
  	# 2. Iterate over all employees
  	# 3. Skip AdminUsers
  	# 4. Send a message that has instructions and a link to log time
		# User.all.each do |user|
		# 	SmsTool.send_sms()
		# end

  end

end