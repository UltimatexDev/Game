function wait(second, millisecond)
	local ostime_vrbl = os.time() + second, millisecond;
	while os.time() < ostime_vrbl do
	end
end

function mathGame(input1, input2)
	local a = input1
	local b = input2
	local result = 10 * 10
	if a * b == result then
		print("Good job you won!")
	else
		print("Go learn some math...")
	end
end

function counterGame(input)
	local names = {"Alex", "Djon", "Darth Vader", "God", "Jesus"}
	local randName = math.random(1, #names)
	print(names[randName])
	if input == names[randName] then
		print("You won!")
	else
		print("You lose.")
	end
end

function startGame(game)
	if game == "MathGame" then
		print("Fine you chose math!")
		wait(1)
		print("What do you need to multiply to get 100?")
		wait(1)
		print("input the first number.")
		local input1 = io.read()
		print("input the second number.")
		local input2 = io.read()
		mathGame(input1, input2)
	elseif game == "NameGame" then
		print("Fine you chose the game where you need to get the right name!\n please input the name you think that got generated!")
		local inputx = io.read()
		counterGame(inputx)
	end
end

print("Lets play a game!\n please enter your name: \n")
local name = io.read()
print("Your name is: "..name.." right?(y = yes n = no)")
local choice = io.read()
if choice == "y" or choice == "yes" then
	print("Welcome "..name.."!\n what do you want to play?\n input the number of the game you want to play!")
	wait(1)
	print("1: Math Game")
	wait(0.5)
	print("2: Counter Game")
	local input1 = io.read()

	if input1 == "1" then
		startGame("MathGame")
	elseif input1 == "2" then
		startGame("NameGame")
	end
elseif choice == "n" or choice == "no" then
	print("Okay... then tell me what your name is: ")
	local name = io.read()
	print("Your name is: "..name.." right...?(y = yes n = no)")
	local choice = io.read()
	if choice == "y" or choice == "yes" then
		print("Welcome "..name.."!\n what do you want to play?\n input the number of the game you want to play!")
		wait(1)
		print("1: Math Game")
		wait(0.5)
		print("2: Counter Game")
		local input1 = io.read()

		if input1 == "1" then
			startGame("MathGame")
		elseif input1 == "2" then
			startGame("NameGame")
		end
	elseif choice == "n" or choice == "no" then
		wait(5)
		print("THEN WHAT THE HELL IS YOUR NAME?!")
	end
end
