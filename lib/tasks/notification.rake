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
end