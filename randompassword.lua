Characters = [[1234567890qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM!@#$%&*()-_=+'"\|/,.:][}{?]]
print("Password Creator. Enter the number of characters you want your password to have.")
NOfCharacters = io.read("n") -- numero de caracteres
print("How many Passwords do you want?")
NOfPasswords = io.read("n") -- Numero de senhas

Password = {}
for i = 1, NOfPasswords, 1 do 
    for i = 1, NOfCharacters, 1 do 
        Ira = math.random(1, #Caracteres) -- Selecting random character from Characters string
        Letter = string.sub(Caracteres, Ira, Ira) -- Getting the character to concat into a password
        table.insert(Password, 1, Letter)
    end
    print(table.concat(Password, ""))
    Password = {}
end
