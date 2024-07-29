# Aeronautical-Communication-Traffic-Simulation-Based-on-Kernel-Density-Estimation-Method
Y. Zhang, D. Jiang, F. Shao, T. Wu, X. Liang and J. Chen, “Aeronautical Communication Traffic Simulation Based on Kernel Density Estimation Method,” 2024 IEEE 12th Asia-Pacific Conference on Antennas and Propagation (APCAP). accepted

-Low Earth Orbit (LEO) satellite networks have been emerging as a revolutionary solution for ubiquitous communication in the upcoming sixth generation (6G) wireless communication network. Efficient resource allocation in these satellite networks requires precise analysis of communication traffic demand. To simulate an accurate representation of the spatial-temporal communication traffic pattern worldwide, this paper utilizes Kernel Density Estimation (KDE) to simulate aircraft positions and employs a time-varying communication intensity model. The effectiveness of this approach is validated through numerical simulation results.
本仓库，利用核密度估计（KDE）生成卫星通信业务量的时空分布，并采用时间变化的通信强度模型。通过数值模拟结果验证了该方法的有效性。

计算方面主要用到python及相关的库

#### English Version

To run the KDE_sampling.py, you need to install the following libraries. You can install them using `pip`:

```sh
pip install pandas numpy scipy matplotlib basemap basemap-data-hires
```

Here are the installation commands explained:

1. **pandas**: For reading and writing Excel files and handling dataframes.
2. **numpy**: For numerical operations and array handling.
3. **scipy**: For statistical functions including Kernel Density Estimation (KDE).
4. **matplotlib**: For plotting and visualizations.
5. **basemap**: For map plotting and geographic data visualization. (not necessary, just for visualization in python if you do not have matlab)
6. **basemap-data-hires**: High-resolution data for basemap. (not necessary, just for visualization in python if you do not have matlab)

Ensure you have these libraries installed before running the program. If any of these libraries are not installed, you can install them by running the command provided above.

#### Chinese Version

要运行上述程序，您需要安装以下库。您可以使用 `pip` 来安装它们：

```sh
pip install pandas numpy scipy matplotlib basemap basemap-data-hires
```

以下是安装命令的解释：

1. **pandas**：用于读取和写入Excel文件以及处理数据框。
2. **numpy**：用于数值运算和数组处理。
3. **scipy**：用于统计函数，包括核密度估计（KDE）。
4. **matplotlib**：用于绘图和可视化。
5. **basemap**：用于地图绘制和地理数据可视化。 (not necessary, just for visualization in python if you do not have matlab)
6. **basemap-data-hires**：用于basemap的高分辨率数据。(not necessary, just for visualization in python if you do not have matlab)

