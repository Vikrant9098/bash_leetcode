# Use awk to process the file line by line
# NR is the current line number, and NF is the number of fields (columns)
# For each field, store its value in an array 'arr' indexed by column number and line number
# After reading all lines (END block), print the transposed output:
#   Loop through each column (i)
#   Then loop through each row (j) to print the corresponding element, forming the transposed structure
awk '{
    for (i = 1; i <= NF; i++) {
        arr[i, NR] = $i
    }
}
END {
    for (i = 1; i <= NF; i++) {
        for (j = 1; j <= NR; j++) {
            printf "%s%s", arr[i, j], (j == NR ? "\n" : " ")
        }
    }
}' file.txt
