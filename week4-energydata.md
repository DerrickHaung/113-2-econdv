# Codebook for Reshaped Energy Dataset

## Dataset Description
This dataset contains the energy generation data in Taiwan from 2003 to the most recent year available. 
The data includes various types of renewable energy generation such as hydro, geothermal,
solar, wind, biomass, and waste. The data is organized by year and categorized by energy type, 
with corresponding generation values in different units.

## Table of Variables

| Variable Name       | Class          | Description                                                                                   | Example                  |
|---------------------|----------------|-----------------------------------------------------------------------------------------------|--------------------------|
| `日期.年.`          | `integer`      | Year of the data record.                                                                       | 2003, 2004, 2005, ...    |
| `單位`               | `factor`       | The unit of measurement for the energy generation value. Typically in "千度" (thousands of kWh). | "千度"                   |
| `能源類別`           | `factor`       | Type of energy generated (e.g., hydro, solar, wind, biomass).                                 | "再生能源發電量合計", "慣常水力", "地熱", etc. |
| `發電量`             | `numeric`      | The total energy generation for the corresponding `能源類別` and year.                         | 6209739, 6584988, 7540945 |
| `再生能源發電量合計`  | `numeric`      | Total renewable energy generation.                                                             | 6209739                  |
| `慣常水力`           | `numeric`      | Conventional hydropower generation.                                                            | 3034516                  |
| `地熱`               | `numeric`      | Geothermal power generation.                                                                   | 0.000                    |
| `太陽光電`           | `numeric`      | Solar power generation.                                                                         | 461.000                  |
| `風力_小計`          | `numeric`      | Total wind power generation (including both onshore and offshore).                             | 23761.62                 |
| `風力_陸域`          | `numeric`      | Onshore wind power generation.                                                                  | 23761.62                 |
| `風力_離岸`          | `numeric`      | Offshore wind power generation.                                                                 | 0.00                     |
| `生質能_小計`        | `numeric`      | Total biomass energy generation.                                                                | 394253.6                 |
| `生質能_固態`        | `numeric`      | Solid biomass power generation.                                                                 | 297091.7                 |
| `生質能_氣態`        | `numeric`      | Gaseous biomass power generation.                                                                | 97161.85                 |
| `廢棄物`             | `numeric`      | Waste-to-energy generation.                                                                     | 2756746                  |

## Key Points:
- The dataset covers a range of years, starting from 2003.
- It includes a breakdown of energy generation by type, measured in thousands of kilowatt-hours (千度).
- Variables like `能源類別` allow for grouping energy generation by type.
- `發電量` represents the energy generation for the year and energy type.

# Count Summary

## Summary of "日期.年."

| Statistic | Value |
|-----------|-------|
| Min       | NA    |
| 1st Qu.   | NA    |
| Median    | NA    |
| Mean      | NaN   |
| 3rd Qu.   | NA    |
| Max       | NA    |
| NA's      | 231   |

## Summary of "單位"

| Unit  | Count |
|-------|-------|
| 千度  | 231   |

## Summary of "發電量"

| Statistic | Value    |
|-----------|----------|
| Min       | 0        |
| 1st Qu.   | 31,034   |
| Median    | 321,096  |
| Mean      | 2,312,981|
| 3rd Qu.   | 3,227,770|
| Max       | 26,871,226|


