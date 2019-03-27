class User < ActiveRecord::Base

    has_many :tests
    has_many :questions, through: :tests

    @prompt = TTY::Prompt.new

    validates :name, presence: true
    validates :password, presence: true

    def self.register
        name_str = @prompt.ask('Username:')
        password_str = @prompt.ask('Password:')
        User.find_or_create_by(name: name_str, password: password_str)
    end

    def self.sign_in
        name_str = @prompt.ask('What is your username?')
        password_str = @prompt.ask('What is your password?')
        if User.find_by(name: name_str, password: password_str)
            puts "Welcome back #{name_str}!"
        else
            puts "Incorrect details, try again."
            User.sign_in
        end
    end
    
    def self.delete_account
        if @prompt.yes?('Do you want to delete your account?')
            name_str = @prompt.ask('What is your username?')
            password_str = @prompt.ask('What is your password?')
            if result = User.find_by(:name => name_str, :password => password_str)
                User.delete(result.id)
                puts "Account has been deleted. Please come back again"
            else
                puts "Incorrect details"
            end
        end
    end

    def self.update_username
        if @prompt.yes?('Do you want to update your username?')
            name_str = @prompt.ask('What is your current username?')
            password_str = @prompt.ask('What is your password?')
            new_name_str = @prompt.ask('What would you like your new username to be?')
            if result = User.find_by(:name => name_str, :password => password_str)
                result.update(name: new_name_str)
                puts "Your username has been updated"
            else
                puts "Incorrect details"
            end
        end
    end

    def self.update_password
        if @prompt.yes?('Do you want to update your password?')
            name_str = @prompt.ask('What is your username?')
            password_str = @prompt.ask('What is your current password?')
            new_password_str = @prompt.ask('What would you like your new password to be?')
            if result = User.find_by(:name => name_str, :password => password_str)
                result.update(password: new_password_str)
                puts "Your password has been updated"
            else
                puts "Incorrect details"
            end
        end
    end

end