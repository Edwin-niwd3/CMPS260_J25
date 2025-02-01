#!/bin/sh

gasType="1"
gallonAmount=-1
total=0
paymentType="1"
regularPrice=5.02
midgradePrice=5.22
premiumPrice=5.42
dieselPrice=6.03

echo "--------------------Welcome to Gas 4 Taxes------------------"
echo "|       Gas Type            |                Price         |"
echo "|       Regular             |               \$5.02         |"
echo "|       Midgrade            |               \$5.22         |"
echo "|       Premium             |               \$5.42         |"
echo "|       Diesel              |               \$6.03         |"
echo "------------------------------------------------------------"
read -p "Choose a gas type to fill up your car: " gastype
read -p "How many gallons: " gallonAmount

case "$gastype" in
    "Regular") total=$(echo "$gallonAmount * $regularPrice" | bc) ;;
    "Midgrade") total=$(echo "$gallonAmount * $midgradePrice" | bc) ;;
    "Premium") total=$(echo "$gallonAmount * $premiumPrice" | bc) ;;
    *) total=$(echo "$gallonAmount * $dieselPrice" | bc) ;;
esac

echo "Your total is \$$total"

read -p "How would you like to pay for it? (Debit Card, Credit Card, Gift Card or Cash) " paymentType

echo "Great! You have paid the balance of \$$total using your $paymentType"

