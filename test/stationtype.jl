@testset "Ensure consistency between `dict_code2type` and latest station-location table." begin
    using DataFrames

    station_location = TWGEMSDatasets.dataset("StationInfo", "location")

    for row in eachrow(station_location)
        @test code2type(row.code) == row.type
    end
end
