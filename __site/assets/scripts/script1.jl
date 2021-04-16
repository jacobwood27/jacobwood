using CSV
using DataFrames

fullcsv = CSV.read("_assets/data/books.csv", DataFrame)
CSV.write("_assets/data/books3.csv", fullcsv)