## Pandas Data Analysis Cheat Sheet

### 1\. Importing Pandas

To start working with Pandas, you need to import the library. Conventionally, it is imported as ```pd```.



```import pandas as pd```



### 2\. Reading Data

Pandas provides various methods to read data from different file formats. The most commonly used one is ```read_csv()``` to read data from a CSV file.



```df = pd.read_csv('filename.csv')```



### 3\. Exploring the Data

Once the data is loaded, you can perform several operations to explore and understand its structure.

#### View the first few rows of the DataFrame:



```df.head()```



#### View the last few rows of the DataFrame:



```df.tail()```



#### Get a concise summary of the DataFrame:



```df.info()```



#### Get descriptive statistics of the DataFrame:



```df.describe()```



### 4\. Data Selection and Filtering

#### Selecting a column:



```df['column_name']```



#### Selecting multiple columns:



```df[['column1', 'column2']]```



#### Filtering rows based on a condition:



```df[df['column'] > 5]```



### 5\. Data Manipulation

#### Adding a new column:



```df['new_column'] = values```



#### Renaming columns:



```df.rename(columns={'old_name': 'new_name'}, inplace=True)```



#### Removing columns:



```df.drop('column_name', axis=1, inplace=True)```



#### Sorting the DataFrame by a column:



```df.sort_values('column_name', ascending=False)```



### 6\. Data Aggregation

#### Grouping data by a column and calculating the mean:



```df.groupby('column_name').mean()```



#### Grouping data by multiple columns and calculating the sum:



```df.groupby(['column1', 'column2']).sum()```



### 7\. Handling Missing Data

#### Checking for missing values:



```df.isnull()```



#### Dropping rows with missing values:



```df.dropna()```



#### Filling missing values with a specified value:



```df.fillna(value)```



### 8\. Data Visualization

#### Plotting a line chart:



```df.plot(x='x_column', y='y_column', kind='line')```



#### Plotting a histogram:



```df['column'].plot(kind='hist')```



#### Plotting a bar chart:



```df['column'].plot(kind='bar')```



### 9\. Data Cleaning

#### Removing duplicate rows:



```df.drop_duplicates()```



#### Replacing values in a column:



```df['column'].replace(old_value, new_value)```



#### Removing leading and trailing whitespaces from strings:



```df['column'] = df['column'].str.strip()```



### 10\. Handling Dates

#### Converting a column to datetime format:



```df['date_column'] = pd.to_datetime(df['date_column'])```



#### Extracting year, month, or day from a datetime column:



```df['year'] = df['date_column'].dt.year df['month'] = df['date_column'].dt.month df['day'] = df['date_column'].dt.day```



### 11\. Merging DataFrames

#### Concatenating DataFrames vertically (row-wise):



```df_concat = pd.concat([df1, df2])```



#### Merging DataFrames based on a common column:



```df_merged = pd.merge(df1, df2, on='common_column')```



### 12\. Handling Categorical Data

#### Encoding categorical variables using one-hot encoding:



```encoded_df = pd.get_dummies(df['categorical_column'])```



#### Merging encoded categorical variables with the original DataFrame:



```df = pd.concat([df, encoded_df], axis=1)```



### 13\. Handling Outliers

#### Detecting outliers using z-score:



```from scipy import stats  z_scores = stats.zscore(df['numeric_column']) outliers = df[abs(z_scores) > 3]```



### 14\. Pivot Tables

#### Creating a pivot table:



```pivot_table = df.pivot_table(values='value_column', index='index_column', columns='column_to_pivot')```



### 15\. Data Export

#### Exporting DataFrame to a CSV file:



```df.to_csv('filename.csv', index=False)```



#### Exporting DataFrame to an Excel file:



```df.to_excel('filename.xlsx', index=False)```


Certainly! Here's the continuation of the advanced Pandas cheat sheet for data analysis:

### 16\. Handling Time Series Data

#### Resampling data to a lower frequency (e.g., from daily to monthly):



```df.resample('M').mean()```



#### Shifting dates forward or backward:



```df['shifted_column'] = df['date_column'].shift(1)```



### 17\. Working with Text Data

#### Extracting substrings from a column using regular expressions:



```df['new_column'] = df['text_column'].str.extract(r'(pattern)')```



#### Counting occurrences of specific strings in a column:



```df['text_column'].str.count('string')```



### 18\. Handling Large Data Sets

#### Reading data in chunks:



```chunk_size = 10000 for chunk in pd.read_csv('filename.csv', chunksize=chunk_size):     # Process each chunk of data```



#### Writing data in chunks:



```chunk_size = 10000 for i in range(0, len(df), chunk_size):     df[i:i+chunk_size].to_csv(f'filename_{i}.csv', index=False)```



### 19\. Handling Missing Data

#### Interpolating missing values using linear interpolation:



```df['column'].interpolate(method='linear', inplace=True)```



### 20\. Advanced Data Manipulation

#### Applying a function to each group in a grouped DataFrame:



```df.groupby('column').apply(lambda x: custom_function(x))```



#### Applying a function element-wise to a column:



```df['new_column'] = df['column'].apply(lambda x: custom_function(x))```



### 21\. Time Zone Conversion

#### Converting time zone of a datetime column:



```df['date_column'] = df['date_column'].dt.tz_convert('desired_timezone')```



### 22\. Handling Memory Usage

#### Reducing memory usage of a DataFrame:



```df = df.astype('int32')```



### 23\. Handling Categorical Data

#### Creating an ordered category from a column:



```df['ordered_category'] = pd.Categorical(df['column'], ordered=True, categories=['low', 'medium', 'high'])```



### 24\. Handling Sparse Data

#### Converting a DataFrame to a sparse format:



```sparse_df = df.sparse.to_coo()```



### 25\. Advanced Data Visualization

#### Creating a scatter plot with different colors based on a category:



```import matplotlib.pyplot as plt  
   colors = {'category1': 'red', 'category2': 'blue', 'category3': 'green'} 
   plt.scatter(df['x_column'], df['y_column'], c=df['category_column'].map(colors)) 
   plt.show()
   ```
