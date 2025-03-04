# Read the CSV file
raw_travel_data <- read_csv("歷年中華民國國民出國目的地人數統計2002-2024.csv")

tidy_travel_data <- raw_travel_data %>%
  mutate(across(`2002`:`2024`, as.character)) %>%  # 先轉換為 character，避免 parse_number() 錯誤
  mutate(across(`2002`:`2024`, parse_number)) %>%  # 轉換為數字類型
  pivot_longer(
    cols = -c(`首站抵達地`, `細分`),
    names_to = "year",
    values_to = "traveler_count"
  ) %>%
  mutate(year = as.integer(year))  # 轉換 year 欄位為整數型態

# View the cleaned data
print(tidy_travel_data)


