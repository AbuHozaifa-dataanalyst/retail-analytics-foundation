# Simple Python script to sum units sold per product
import pandas as pd

# Load CSV
data = pd.read_csv('../data/sample_sales.csv')

# Calculate total units sold per product
total_units = data.groupby('Product')['Units_Sold'].sum()
print(total_units)

print("This is my first commit test!")

