repeat="true"
item="Bread, Milk, Candy, Cookies, Soda"
total="0"
Bread="3"
Milk="2"
Candy="1"
Cookies="2"
Soda="3"

while [ "$repeat" == "true" ]
do
echo "Welcome to our store"
echo "How can we help you today?"
echo "Enter 1 for products list"
echo "Enter 2 to to add to cart"
echo "Enter 3 to checkout"

read answer
if [ "$answer" == "1" ]
then
    echo "Bread, Milk, Candy, Cookies, Soda"
read item
    read answer
elif [ "$answer" == "Bread" ]
then
	echo "Bread is $Bread"
        total=$(($total+$Bread))
elif [ "$answer" == "Milk" ]
then
	echo "Milk is $Milk"
        total=$(($total+$Milk))
elif [ "$answer" == "Candy" ]
then
	echo "Candy is $Candy"
        total=$(($total+$Candy))
elif [ "$answer" == "Cookies" ]
then
	echo "Cookies is $Cookies"
        total=$(($total+$Cookies))
elif [ "$answer" == "Soda" ]
then
	echo "Soda is $Soda"
        total=$(($total+$Soda))

elif [ "$answer" == "2" ]
then
        echo "would you like to checkout this item?"
else
        echo "This item is not available, please choose from list provided"

fi

done
