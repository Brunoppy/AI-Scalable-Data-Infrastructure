import pandas as pd 
from sqlalchemy import create_engine

# Database connection
engine = create_engine("postgresql://user:password@localhost/dbname")

# Load user data
df_users = pd.read_sql("SELECT * FROM users;", engine)
print(df_users.head())

# Load transaction data and analyze
df_transactions = pd.read_sql("SELECT * FROM transactions;", engine)
total_transactions = df_transactions["amount"].sum()
print(f"Total Transactions: ${total_transactions}")
