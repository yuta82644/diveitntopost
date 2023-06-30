class OwnerChengeMailer < ApplicationMailer
  def owner_chenge_mailer(team)
    @team = team
    @user = User.find(@team.owner_id)
    mail to: @user.email, subject: "リーダー権限"
  end
end
