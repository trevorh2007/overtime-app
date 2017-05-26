namespace :notification do
  desc "Send a notification to employees to ask whether they had overtime or not"
  task sms: :environment do
    if Time.now.friday?
      employees = Employee.all
      notification_message = "Please log into the overtime management dashboard to request overtime or confirm your hours for last week: http://mock-overtime-app.herokuapp.com/"

		employees.all.each do |employee|
			SmsTool.send_sms(number: employee.phone, message: notification_message)
		end
    end
  end

  desc "Send a notification to admin users each day to inform of pending overtime requests"
  task manager_email: :environment do
    submitted_posts = Post.submitted
    admin_users = AdminUser.all

    if submitted_posts.count > 0
      admin_users.each { |admin| ManagerMailer.email(admin).deliver_now }
    end
  end

end