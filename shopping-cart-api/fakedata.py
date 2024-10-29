from faker import Faker
import random

fake = Faker()

# Predefined data for a Nike store
sizes = [["S"], ["M"], ["L"], ["XL"], ["XS"], ["S", "M"], ["M", "L", "XL"], ["S", "M", "L"], ["L", "XL"]]
styles = ["Running", "Basketball", "Casual", "Sportswear", "Training", "Lifestyle"]
titles = ["Air Zoom Pegasus", "Air Max", "React Infinity", "Joyride Dual Run", "Nike Revolution", "Zoom Freak"]
currencies = ["$", "€", "£"]

# Generate 100 fake product insert statements
insert_statements = []
for i in range(100):
    id = i + 1
    title = f"{random.choice(titles)} {fake.word().capitalize()}"
    available_sizes = random.choice(sizes)
    currency_format = random.choice(currencies)
    currency_id = "USD"  # Assuming USD as the standard currency
    description = fake.sentence(nb_words=6)
    installments = random.randint(1, 12)
    is_free_shipping = random.choice([True, False])
    price = round(random.uniform(20, 200), 2)
    sku = fake.random_number(digits=16, fix_len=True)
    style = random.choice(styles)
    released = random.choice([True, False])

    insert_sql = f"""
    INSERT INTO products (id, title, available_sizes, currency_format, currency_id, description, installments, is_free_shipping, price, sku, style, released)
    VALUES ({id}, '{title}', '{available_sizes}', '{currency_format}', '{currency_id}', '{description}', {installments}, {str(is_free_shipping).upper()}, {price}, {sku}, '{style}', {str(released).upper()});
    """
    insert_statements.append(insert_sql)

# Save the SQL statements to a file
with open("nike_store_products.sql", "w") as f:
    f.write("\n".join(insert_statements))

print("Generated 100 fake product rows for Nike store and saved to nike_store_products.sql")
