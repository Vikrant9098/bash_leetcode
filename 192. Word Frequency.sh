# cat words.txt → reads the content of the file
# tr -s ' ' '\n' → replaces spaces with new lines (one word per line)
# sort → sorts all words alphabetically
# uniq -c → counts the occurrences of each unique word
# sort -nr → sorts the counts in numeric and reverse (descending) order
# awk '{print $2, $1}' → prints the word first, then its count
cat words.txt | tr -s ' ' '\n' | sort | uniq -c | sort -nr | awk '{print $2, $1}'
