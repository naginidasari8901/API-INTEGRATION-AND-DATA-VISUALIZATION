import matplotlib.pyplot as plt
import seaborn as sns

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
