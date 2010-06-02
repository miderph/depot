class Emailer < ActionMailer::Base
  
  def contact(recipient, subject, message, sent_at = Time.now)  
    @subject = subject  
    @recipients = recipient  
    @from = 'miderph.yan@gmail.com' 
    @sent_on = sent_at  
    @body["title"] = subject
    @body["email"] = 'miderph.yan@gmail.com'  
    @body["message"] = message  
    @headers = {}  
  end
  
  def reminder
    @subject ="Your login information at space.com"
    @body={}
    @body["user"]="miderph.yan"
    @recipients="miderph.yan@oobmedia.com"
    @from="miderph.yan@gmail.com"
  end
end
