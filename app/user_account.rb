# require_relative '../config/environment'
class UserAccount

  @prompt = TTY::Prompt.new

  def self.edit_user 
    new_choices = ["Update Username", "Update Password", "Delete Account", "Go Back"]
    case @prompt.select("What would you like to do", new_choices)
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