module TWGEMSDatasets

using SmallDatasetMaker

 function TWGEMSDatasets.dataset(package_name, dataset_name)
     SmallDatasetMaker.dataset(TWGEMSDatasets,package_name, dataset_name)
 end

 TWGEMSDatasets.datasets() = SmallDatasetMaker.datasets(TWGEMSDatasets)



include("stationlocation_shift.jl")
export station_location_text_shift
export textoffset
end
