--Get max number from user
--print out random number between 1 and userNum
--allow to play again


--variables
maxNum = none
compNum = none
playing = true

--set up random number generator
math.randomseed(os.time()) --randomize the ramdomizer
math.random() ; math.random() ; math.random() --get rid of any old numbers

while playing == true do
    --ask for number
    while maxNum == nil or maxNum == "" or  not tonumber(maxNum) do
        print("Give me a high number: ")
        maxNum = io.read() --keep asking user until input is valid
    end
    --print out random number
    compNum = math.random(1, maxNum)
    print("The computer picked the random number: ".. compNum)
   --reset values for use
    maxNum = nil
    compNum = nil
    --ask if they want to play again
    print("Press Y for another number, any other key to exit: ")
    playing = io.read()
    if string.upper(playing) ~= "Y" then
        break
    else
        playing = "Y"
    end
    end
    print("Thanks for playing")
