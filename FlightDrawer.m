clc; clear;

filename1 = 'flight_data.xlsx';
data = readtable(filename1);

filename2 = 'sampled_flight_data.xlsx';
sim_data = readtable(filename2);
% 提取经纬度数据（假设经度在第 1 列，纬度在第 2 列）
lats = data.lat;
lons = data.lon;
sim_lats = sim_data.lat;
sim_lons = sim_data.lon;

% 绘制世界地图
figure(1);
worldmap('world'); % 使用 'world' 作为地图范围
land = shaperead('landareas', 'UseGeoCoords', true);
geoshow(land, 'FaceColor', [0.5, 0.5, 0.5]);

% 绘制飞机终端
scatterm(lats, lons, 13, 'r', 's', 'filled'); % 'r'代表红色, 's' 代表方块
% 设置坐标轴字号
set(gca, 'FontSize', 24);

% 添加经纬度标签
setm(gca, 'FontSize', 24, 'MLabelLocation', 90, 'PLabelLocation', 45, ...
    'MLabelRound', -1, 'PLabelRound', -1, 'MLabelParallel', 'south', 'PLabelMeridian', 'west')

% 显示图形
tightmap;

% 绘制世界地图
figure(2);
worldmap('world'); % 使用 'world' 作为地图范围
land = shaperead('landareas', 'UseGeoCoords', true);
geoshow(land, 'FaceColor', [0.5, 0.5, 0.5]);

% 绘制飞机终端
scatterm(sim_lats, sim_lons, 13, 'b', 's', 'filled'); % 'b'代表蓝色, 's' 代表方块
% 设置坐标轴字号
set(gca, 'FontSize', 24);

% 添加经纬度标签
setm(gca, 'FontSize', 24, 'MLabelLocation', 90, 'PLabelLocation', 45, ...
    'MLabelRound', -1, 'PLabelRound', -1, 'MLabelParallel', 'south', 'PLabelMeridian', 'west')

% 显示图形
tightmap;
