# API-INTEGRATION-AND-DATA-VISUALIZATION

*COMPANY*: CODETECH IT SOLUTIONS

*NAME*: DASARI NAGINI

*INTERN ID*: CT08DF564 

*DOMAIN*: PYTHON

*DURATION*: 8 WEEEKS

*MENTOR*: NEELA SANTHOSH KUMAR

# YOU HAVE TO ENTER DESCRIPTION OF YOUR TASK (AND IT SHOULD NOT BE LESS THAN 500 WORDS)

# 🔗 Part 1: API Integration Using Python

✅ Step-by-step Workflow:

1. Find an API (e.g., weather, finance, COVID data, GitHub, etc.)


2. Understand the endpoint (URL, parameters, headers)


3. Use requests to make HTTP requests


4. Process the JSON/XML response


5. Convert to a DataFrame (optional, for analysis)

# Send GET request
response = requests.get(url)

# Parse JSON
data = response.json()

# Extract global stats
global_stats = data['Global']
print("Global Summary:", global_stats)

# Extract country-wise data into a DataFrame
countries_data = pd.DataFrame(data['Countries'])

# View top 5 rows
print(countries_data[['Country', 'TotalConfirmed', 'TotalDeaths', 'TotalRecovered']].head())


# 📊 Part 2: Data Visualization with Python

Use libraries like:

Matplotlib – low-level, flexible plotting

Seaborn – high-level interface for statistical plots

Plotly – interactive plots (web-friendly)

Pandas built-in – quick plots from DataFrames

# program: plot total COVID-19 Cases by country
import matplotlib.pyplot as plt
import seaborn as snsn
top10 = countries_data.sort_values(by='TotalConfirmed', ascending=False).head(10)
plt.figure(figsize=(12, 6))
sns.barplot(x='TotalConfirmed', y='Country', data=top10, palette='Reds_r')
plt.title('Top 10 Countries by Total Confirmed COVID-19 Cases')
plt.xlabel('Total Confirmed Cases')
plt.ylabel('Country')
plt.tight_layout()
plt.show()

# 🔄 Combine Both

You can wrap everything into a script or a Jupyter notebook to fetch real-time data from any API and visualize it with Python.


---

# ⚙ Tools You Can Use:

IDE: Jupyter Notebook, VS Code, PyCharm

Libraries:

requests for API

pandas for data handling

matplotlib, seaborn, or plotly for visualization
---

# ✅ Output :

![Image](https://github.com/user-attachments/assets/18a18747-7f33-4d1b-b668-b6971844e9e5)

![Image](https://github.com/user-attachments/assets/0b507482-4279-40f8-87d8-83114a7bce20)

![Image](https://github.com/user-attachments/assets/957fec3d-fd2e-4680-adf0-2fb9ee6c7a14)



