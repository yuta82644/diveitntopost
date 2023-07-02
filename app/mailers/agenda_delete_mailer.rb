class AgendaDeleteMailer < ApplicationMailer

  def agenda_delete_mailer(team_menbers)
    @team_menbers = team_menbers

    mail to: @team_menbers.map(&:email).join(",")
  end
end
