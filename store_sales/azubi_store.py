# Welcome message
print("Welcome to Azubi Store");

# intialize variables
products = ["Sankofa Foods", "Jamestown Coffee", "Bioko Chocolate", "Blue Skies Ice Cream", "Fair Afric Chocolate", "Kawa Moka Coffee", "Aphro Spirit", "Mensado Bissap", "Voltic"]
prices = [30, 25, 40, 20, 20, 35, 45, 50, 35]
last_week = [2, 3, 5, 8, 4, 4, 6, 2, 9]
average_price = 0;
total_revenue = 0;
total_price = 0;
average_daily_revenue = 0;
new_price_list = [];
products_below_30 = [];

# loop through the prices list and calculate the total price, average price, total revenue and new price list
for i in range(len(prices)):
    total_price += prices[i];
    average_price = total_price / len(prices);
    total_revenue += prices[i] * last_week[i];
    new_price_list.append(prices[i] - 5);

# average daily revenue calculation
average_daily_revenue = total_revenue / 7;

# loop to calculate prices below 30$
for i in range(len(new_price_list)):
    if new_price_list[i] < 30:
        products_below_30.append(new_price_list[i]);

# output for computed values
print("Average Price: " + str(average_price));
print("Total Revenue: " + str(total_revenue));
print("Average Daily Revenue: " + str(average_daily_revenue));
print("New Price List: " + str(new_price_list));
print("Products Below 30$: " + str(products_below_30));


