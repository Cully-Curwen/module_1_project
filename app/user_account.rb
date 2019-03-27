# require_relative '../config/environment'
class UserAccount

  @prompt = TTY::Prompt.new

  def self.edit_user 
    new_choices = [Styling.centre("Update Username"), Styling.centre("Update Password"), Styling.centre("Delete Account"), Styling.centre("Go Back")]
    case @prompt.select(Styling.centre("What would you like to do"), new_choices, help_color: :hidden)
    when "Update Username"
      User.update_username
    when "Update Password"
      User.update_password
    when "Delete Account"
      User.delete_account
      live = false
    when "Go Back"
      true
    end
  end

end