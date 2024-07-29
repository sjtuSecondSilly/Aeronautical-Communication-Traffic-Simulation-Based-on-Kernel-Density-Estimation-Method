import pandas as pd
import numpy as np
from scipy.stats import gaussian_kde
import matplotlib.pyplot as plt

from mpl_toolkits.basemap import Basemap

# 读取数据
file_path = 'flight_data.xlsx'
data = pd.read_excel(file_path)

# 提取经纬度数据
data_lon = data['lon']  # 假设经度在名为'Longitude'的列
data_lat = data['lat']  # 假设纬度在名为'Latitude'的列
# 将数据结构化为适合KDE的格式
data_kde = np.vstack([data_lon, data_lat])

# 使用数据点估计KDE
# kde = gaussian_kde(data_kde, bw_method='scott')  # 或者使用一个特定的数值
kde = gaussian_kde(data_kde, bw_method=0.01);

# 采样10000个点
num_samples = 13000
samples = kde.resample(num_samples)
samples = samples.T  # 现在samples是一个(num_samples, 2)的数组
# 导入Excel写入库
import pandas as pd

# 创建DataFrame
samples_df = pd.DataFrame(samples, columns=['lon', 'lat'])

# 输出文件路径
output_file_path1 = 'sampled_flight_data.xlsx'

# 将数据写入Excel文件
samples_df.to_excel(output_file_path1, index=False)

print(f"Sampled data has been successfully written to {output_file_path1}")

