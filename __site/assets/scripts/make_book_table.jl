#=
This script takes the BOOKS_CSV and pulls out just the columns we want to show on the website
=#

BOOKS_CSV = "_assets/data/books.csv"
BOOKS_SHOW_CSV = "_assets/data/books_show.csv"
DESIRED_COLUMNS = [:Title, :Author, :Stars, :Takeaway]

fullcsv = CSV.read(BOOKS_CSV, DataFrame)
cutcsv = select(fullcsv, DESIRED_COLUMNS)

insertcols!(cutcsv, 1, :Rank => 1:nrow(cutcsv))

CSV.write(BOOKS_SHOW_CSV, cutcsv)