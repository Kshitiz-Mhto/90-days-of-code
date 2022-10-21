import csv
import pandas as pd
with open("tips.csv", 'r') as fi:
    reader = csv.reader(fi, delimiter=',')
    for _ in range(5):
        print(next(reader))

print('-----------------------------------------------')

data = pd.read_csv('tips.csv')
type(data)
# create a DataFrame using tail and head method

data.tail(9)
data.head(4)

# for statistical insight 
data.describe()
#viewing single col

data['tip']
