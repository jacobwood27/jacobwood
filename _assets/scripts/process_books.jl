#=
This script takes the BOOKS_CSV and pulls out just the columns we want to show on the website
=#

# Define some things
BOOKS_CSV = "_assets/data/books.csv"
BOOKS_SHOW_CSV = "_assets/books/books_show.csv"
BOOKS_RATING_HIST = "_assets/books/book_rate_hist.svg"
BOOKS_STACKED_AREA = "_assets/books/book_rate_stacked.svg"
START_DATE = Dates.Date(2019,1,1)
END_DATE = Dates.today() 
DESIRED_COLUMNS = [:Title, :Author, :Stars, :Takeaway]

# Read in the CSV
df = CSV.read(BOOKS_CSV, DataFrame)
df[!,"Date Read"] = Date.(df[!,"Date Read"],Dates.DateFormat("yyyy/mm/dd"))

# Write a version of the CSV to file for display on the site
cutcsv = select(df, DESIRED_COLUMNS)
insertcols!(cutcsv, 1, :Rank => 1:nrow(cutcsv))
CSV.write(BOOKS_SHOW_CSV, cutcsv)

# Make a plot of star distribution
h_plot = histogram(df.Stars, 
                    bins = 0.5:4.5, 
                    orientation = :h,
                    xlabel = "Counts",
                    ylabel = "Rating",
                    grid = false,
                    legend = false,
                    size = (500,300))
savefig(h_plot, BOOKS_RATING_HIST)

# Show evolution of fractions over time 
dr = START_DATE:Day(1):END_DATE
sa = zeros(Float64, length(dr), 4)
for (i,d) in enumerate(dr)
    #get all the entries before this date
    this_stars = df[df[!,"Date Read"].<d ,:Stars]
    tot_counts = length(this_stars)
    for j in 1:4
        sa[i,j] = count(this_stars.==j)/tot_counts
    end
end

sa_plot = areaplot(sa, legend=:topleft)
