#echo is  a way to give  feedback to the person running the shell
echo "This is your first shell script!"

# Variables
msg="Hello World Variable"
echo $msg # $ synttax helps us describe a variable

# Control Flow


# if statements
ten=10
five=5
thirteen=13


echo "===First if==="
if [ "$ten" -ge "$five" ]
then 
echo "Greater!"
echo "$ten > $five"
fi

echo "===second if==="
if [ "$five" -ge "$ten" ]
then
echo "Greater!"
echo "$five < $ten"
elif [ "$five" -le "$ten" ]
then 
echo "Lesser!"
echo "$five < $ten"
fi


echo "===Third if==="
if [ "$five" -ge "$ten" ]
then
echo "Greater!"
echo "$five > $ten"
elif [ "$five" -ge "$thirteen" ]
then
echo "Greater!"
echo "$five > $thirteen"
echo "Nothing Matches"
fi

echo "===First Loop==="

for number in 10 5 World 1 2

do 
echo "Hello $number" 
done

echo "===Second Loop==="
for i in {1..10}
do
echo "$i"
done
echo "===While Loops==="
# While Loop statement
# Will repeat your lines of code multiple times as long as the condition is true
# Useful if you don't know how many times you need to execute those lines of code

while [ "$five" -le "$ten" ]
do
echo "Lesser!"
five=$(($five+1)) # $((mathematical operation)) syntax is how we can do math stuff
echo "$five"
done

# Input and Output
# We can ask for inputer from the user that is using the shell scripting and output some sort of response
echo "What is your name?"
#read name # Read [wahtever variable name you specify] will store the user input in that variable

echo "Hello $name, Welcome to programming!"
 # Making a shell menu
clear 
repeat="true"

while [ "$repeat" == "true" ]
do
echo "Welcome to shell scripting"
echo "What do you want to do  today?"
echo "enter 1 for adding  two numbers?"
echo "enter 2 to exit"

read answer
if [ "$answer" == "1" ]
then
        echo "Give me number 1"
        read num1
        echo "Give me number 2"
        read num2
        echo "the sum is $(($num1+num2))"
elif [ "$answer" == "2" ]
then
        repeat="false"
else
        echo "Please enter a correct option"

fi 


done
