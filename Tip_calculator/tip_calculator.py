percent_tip = 0.18;
percent_tax  = 0.07;

print("Welcome To Asanka Hotel");
print("Please Enter Your Bill Amount.");
bill = float(input());
print("Please Enter Number Of People")
people = int(input());

tip = bill * percent_tip;
Sales_tax = bill * percent_tax;

total = bill + tip + Sales_tax;
each = total / people;
print("Tip: ", tip);
print("Sales Tax: ", Sales_tax);
print("Your Total Bill Is: ", total);
print("Each Person Should Pay");
print(each);
print("Thank You For Visiting Asanka Hotel");
