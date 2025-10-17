@testset "Test if datasets() works" begin
    using DataFrames
    df = TWGEMSDatasets.datasets()
    @test isa(df, DataFrame)
    @test isa(TWGEMSDatasets.__datasets, DataFrame)
end

@testset "Test if ALL datasets can be successfully loaded." begin
    using DataFrames
    for lastrow in eachrow(TWGEMSDatasets.__datasets)
        pkgnm = lastrow.PackageName
        datnm = lastrow.Dataset
        df = TWGEMSDatasets.dataset(pkgnm, datnm)
        @info "$pkgnm/$datnm goes through `PrepareTableDefault` without error."
        @test lastrow.Columns == ncol(df)
        @test lastrow.Rows == nrow(df)
    end
    @test true
end
