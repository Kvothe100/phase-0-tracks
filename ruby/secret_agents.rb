puts "Would you like to encrypt or decrypt a password? (e/d)"
response = gets.chomp

puts "What is your password?"
password = gets.chomp

    if response == "e" || response == "encrypt"

    def encrypt(str)
        str.tr!('a-z', 'b-za')
        return str
    end
    puts encrypt(password)

    
    elsif response == "d" || response == "decrypt"
    
        def decrypt(str)
        str.tr!('a-z', 'za-y')
        return str
        end
    puts decrypt(password)
        
    end