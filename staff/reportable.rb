module Actualize    
  module Reportable # inheratance
    def send_report
      puts "Sending email..."
      # use email sending library...
      puts "Email sent!"
    end
  end
end