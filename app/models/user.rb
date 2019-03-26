class User < ActiveRecord::Base

    has_many :tests

    validates :name, presence: true
    validates :password, presence: true

    def self.create_password_column
        DB.execute("ALTER TABLE users ADD COLUMN password string;")
    end

    def self.resgister(name: name_str, password: password_str)
        User.find_or_create_by(name: name_str, password: password_str)
    end

    def self.sign_in(name_str)
        User.find_by_name!(name_str)
    end

end
    
