module TWGEMSDatasets

using SmallDatasetMaker

function dataset(package_name, dataset_name)
    SmallDatasetMaker.dataset(TWGEMSDatasets, package_name, dataset_name)
end

datasets() = SmallDatasetMaker.datasets(TWGEMSDatasets)

include("stationlocation_shift.jl")
export station_location_text_shift
export textoffset
end
