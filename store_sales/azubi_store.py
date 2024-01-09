print("Welcome to Azubi Store");

products = ["Sankofa Foods", "Jamestown Coffee", "Bioko Chocolate", "Blue Skies Ice Cream", "Fair Afric Chocolate", "Kawa Moka Coffee", "Aphro Spirit", "Mensado Bissap", "Voltic"]
prices = [30, 25, 40, 20, 20, 35, 45, 50, 35]
last_week = [2, 3, 5, 8, 4, 4, 6, 2, 9]

average_price = 0;
total_revenue = 0;
total_price = 0;
average_daily_revenue = 0;
new_price_list = [];

for i in range(len(prices)):
    total_price += prices[i];
    average_price = total_price / len(prices);
    total_revenue += prices[i] * last_week[i];
    new_price_list.append(prices[i] - 5);

average_daily_revenue = total_revenue / 7;

print("Average Price: " + str(average_price));
print("Total Revenue: " + str(total_revenue));
print("Average Daily Revenue: " + str(average_daily_revenue));
print("New Price List: " + str(new_price_list));


