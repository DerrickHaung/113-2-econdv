# 確保載入 tidyverse 套件（包含 readr）
library(tidyverse)

# 讀取資料檔案（假設為 CSV 格式）
stock_data <- read_csv("STOCK_DAY_ALL_20250304.csv")  # 請替換為你檔案的實際路徑

# 重塑資料，將證券代號作為欄位名稱，將不同指標作為各列的值
tidy_stockdata <- stock_data %>%
  pivot_wider(
    names_from = `證券代號`,   # 使用證券代號來建立新的欄位名稱
    values_from = c(`成交股數`, `成交金額`, `開盤價`, `最高價`, `最低價`, `收盤價`, `漲跌價差`, `成交筆數`)  # 將每個證券的交易指標展開為不同欄位
  )

# 檢視重塑後的資料
glimpse(tidy_stockdata)

# 若需要將重塑後的資料保存為新的 CSV 檔案
write_csv(tidy_stockdata, "tidy_stockdata.csv")
