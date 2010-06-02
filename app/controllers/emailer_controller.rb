class EmailerController < ApplicationController
      def sendmail  
        recipient =  "miderph.yan@gmail.com" 
        subject = "actionMailer"  
        message = "从 actionMailer 发送出来的email,测试内容"  
        Emailer.deliver_contact(recipient, subject, message)  
#        return if request.xhr?  
        render :text => 'Message sent successfully'  
    end
    def reminder
      Emailer.deliver_reminder
      render :text=>"email sent successfully"
    end
    
end
