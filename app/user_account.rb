require_relative '../config/environment'

@prompt = TTY::Prompt.new

def edit_user 
    new_choices = ["Update Username", "Update Password", "Delete Account", "Go Back"]
   case @prompt.select("What would you like to do", new_choices)
   when "Update Username"
    User.update_username
   when "Update Password"
    User.update_password
   when "Delete Account"
    User.delete_account
   when "Go Back"
    #either main menu page here
   end
end