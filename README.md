# API-INTEGRATION-AND-DATA-VISUALIZATION

*COMPANY*: CODETECH IT SOLUTIONS

*NAME*: DASASRI NAGANI

*INTERN ID*: CT08DF564 

*DOMAIN*: PYTHON

*DURATION*: 8 WEEEKS

*MENTOR*: NEELA SANTHOSH KUMAR

# YOU HAVE TO ENTER DESCRIPTION OF YOUR TASK (AND IT SHOULD NOT BE LESS THAN 500 WORDS)

API integration and data visualization are common tasks in Python, especially for data analysis, web development, and automation projects. Below is a practical overview of how to integrate with an API, retrieve data, and visualize it using Python.

# 🔧 Step 1: API Integration in Python
✅ Requirements
Install necessary libraries:

bash
Copy
Edit
pip install requests pandas matplotlib seaborn
✨ Example: Get Data from a Public API (e.g. CoinGecko API for cryptocurrency)

# API Endpoint
url = 'https://api.coingecko.com/api/v3/coins/bitcoin/market_chart'
params = {
    'vs_currency': 'usd',
    'days': '30',
    'interval': 'daily'
}

# Send GET request
response = requests.get(url, params=params)
data = response.json()

# Extract prices
prices = data['prices']
df = pd.DataFrame(prices, columns=['timestamp', 'price'])
df['date'] = pd.to_datetime(df['timestamp'], unit='ms')
df.drop('timestamp', axis=1, inplace=True)

print(df.head())
📊 Step 2: Data Visualization
📈 Using matplotlib and seaborn to plot the data

# Set style
sns.set(style='whitegrid')

# Plot
plt.figure(figsize=(12, 6))
sns.lineplot(data=df, x='date', y='price')
plt.title('Bitcoin Price (Last 30 Days)')
plt.xlabel('Date')
plt.ylabel('Price in USD')
plt.xticks(rotation=45)
plt.tight_layout()
plt.show()

# 🔄 Combining It All
You can wrap this into a function or script to regularly pull data and visualize trends. Add error handling or authentication if working with private APIs.

# 🧠 Other Visualization Libraries You Might Explore
Plotly: Interactive web-based charts

Altair: Declarative statistical visualization

Dash/Streamlit: For creating interactive dashboards

*OUTPUT*: 





