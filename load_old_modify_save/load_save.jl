using TWGEMSDatasets, DataFrames, CSV, Chain
using SmallDatasetMaker
# load and save as a csv file
df = TWGEMSDatasets.dataset("StationInfo", "location")
"StationInfo" |> mkpath

# Modify and update with programming

CSV.write("StationInfo/location.csv", df)

# Manually modify or update the data, then save

compress_save(TWGEMSDatasets, "StationInfo/location.csv"; move_source=false)
