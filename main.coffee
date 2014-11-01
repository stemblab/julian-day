# Import
fix = $blab.fix
julian = $blab.julian

# Julian day
date = new Date(2009, 6, 19, 18)
jdn = julian(date)

# Day of week
days = ['Sun','Mon','Tue','Wed','Thu','Fri','Sat'] #;
days[fix((jdn+1.5)%7)]

