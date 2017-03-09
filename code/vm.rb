class Computer
    @@users = Hash.new
    def create(filename)
        time = Time.now
        @files[filename] = time
        puts "#{filename}, #{@username}, #{time} "
    end
    def initialize(username, password)
        @username = username
        @password = password
        @files = Hash.new
        @@users[username] = password
    end
    def Computer.get_users
        return @@users
    end
end
my_computer = Computer.new("jake", "jake")
