# Use grep with -E to enable extended regular expressions
# ^ ensures the pattern starts at the beginning of the line
# $ ensures the pattern ends at the end of the line
# [0-9]{3}-[0-9]{3}-[0-9]{4} matches the format 987-123-4567
# \([0-9]{3}\) [0-9]{3}-[0-9]{4} matches the format (123) 456-7890
# | acts as OR between the two valid phone number formats
grep -E '^([0-9]{3}-[0-9]{3}-[0-9]{4}|\([0-9]{3}\) [0-9]{3}-[0-9]{4})$' file.txt
