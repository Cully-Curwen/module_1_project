class User < ActiveRecord::Base

    has_many :tests
    has_many :questions, through: :tests

    @prompt = TTY::Prompt.new

    validates :name, presence: true
    validates :password, presence: true

    def self.register
        name_str = @prompt.ask(Styling.centre('Username:'))
        password_str = @prompt.mask(Styling.centre('Password:'))
        User.find_or_create_by(name: name_str, password: password_str)
        if User.find_by(name: name_str, password: password_str)
        else
            puts Styling.centre("Incorrect Values")
            User.register
        end
    end

    def self.sign_in
        name_str = @prompt.ask(Styling.centre('What is your username?'))
        password_str = @prompt.mask(Styling.centre('What is your password?'))
        if user = User.find_by(name: name_str, password: password_str)
            puts Styling.centre("Welcome back #{name_str}!")
            user
        else
            puts Styling.centre("Incorrect details, try again.")
            User.sign_in
        end
    end
    
    def self.delete_account
        if @prompt.yes?(Styling.centre('Are you sure though??'))
            name_str = @prompt.ask(Styling.centre('What is your username?'))
            password_str = @prompt.mask(Styling.centre('What is your password?'))
            if result = User.find_by(:name => name_str, :password => password_str)
                User.delete(result.id)
                puts Styling.centre(Styling.centre("Account has been deleted. Please come back again"))
            else
                puts Styling.centre("Incorrect details")
            end
        end
    end

    def self.update_username
        if @prompt.yes?(Styling.centre('Do you want to update your username?'))
            name_str = @prompt.ask(Styling.centre('What is your current username?'))
            password_str = @prompt.mask(Styling.centre('What is your password?'))
            new_name_str = @prompt.ask(Styling.centre('What would you like your new username to be?'))
            if result = User.find_by(:name => name_str, :password => password_str)
                result.update(name: new_name_str)
                puts Styling.centre("Your username has been updated")
            else
                puts Styling.centre("Incorrect details")
            end
        end
    end

    def self.update_password
        if @prompt.yes?(Styling.centre('Do you want to update your password?'))
            name_str = @prompt.ask(Styling.centre('What is your username?'))
            password_str = @prompt.mask(Styling.centre('What is your current password?'))
            new_password_str = @prompt.mask(Styling.centre('What would you like your new password to be?'))
            if result = User.find_by(:name => name_str, :password => password_str)
                result.update(password: new_password_str)
                puts Styling.centre("Your password has been updated")
            else
                puts Styling.centre("Incorrect details")
            end
        end
    end

end