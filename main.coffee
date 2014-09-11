fix = $blab.fix
date = new Date(2009, 6, 19, 18)
jdn = $blab.julian(date)
days = ['Sun','Mon','Tue','Wed','Thu','Fri','Sat'] #;
days[fix((jdn+1.5)%7)]

