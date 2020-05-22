class UserMailer < ApplicationMailer
  default from: 'forrandomloginsspam@gmail.com'
 
  def invitation_email
    @interview = params[:interview]
    @url = 'http://localhost:3000/' + @interview.avatar.url
    mail(to: @interview.interviewee_email, subject: 'Interview Notice.')
  end

  def interviewer_invitation_email
    @interview = params[:interview]
    @url = 'http://localhost:3000/' + @interview.avatar.url
    mail(to: @interview.interviewer_email, subject: 'Interview Notice.')
  end

  def update_invitation_email
    @interview = params[:interview]
    @url = 'http://localhost:3000/' + @interview.avatar.url
    mail(to: @interview.interviewee_email, subject: 'Interview Update Notice.')
  end

  def interviewer_update_invitation_email
    @interview = params[:interview]
    @url = 'http://localhost:3000/' + @interview.avatar.url
    mail(to: @interview.interviewer_email, subject: 'Interview Update Notice.')
  end

end