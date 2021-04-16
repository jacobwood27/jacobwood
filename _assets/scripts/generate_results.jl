# Parent file to run all scripts which may generate
# some output that you want to display on the website.
# this can be used as a tester to check that all the code
# on your website runs properly.

using CSV
using DataFrames
using Plots

script_dir = "_assets/scripts/"

include(script_dir * "process_books.jl")

