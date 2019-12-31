HTML处理<>
sed 's/<[^>]*>//g'
