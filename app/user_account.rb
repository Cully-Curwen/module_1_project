# require_relative '../config/environment'
class UserAccount

  @prompt = TTY::Prompt.new

  def self.edit_user 
    system 'clear'
    Styling.smart_graphic
    new_choices = {Styling.centre("Update Username") => 1, Styling.centre("Update Password") => 2, Styling.centre("Delete Account") => 3, Styling.centre("Go Back") => 4}
    case @prompt.select(Styling.landing_page("What would you like to do"), new_choices, help_color: :hidden)
    when 1
      User.update_username
    when 2
      User.update_password
    when 3
      User.delete_account
      live = false
    when 4
      true
    end
  end

end