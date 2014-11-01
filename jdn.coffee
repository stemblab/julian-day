# See <a href="http://www.cambridge.org/features/astronomy/">Practical Astronomy with your Calculator or Spreadsheet</a>

fix = (x) -> x - x%1 # Integer part

julian = (date) ->
    d = date.getDate()+date.getHours()/24
    m = date.getMonth()
    y = date.getFullYear()
    if m < 3
        y = y - 1
        m = m + 12
    gregorian = new Date(1582,10,15)
    B = if date > gregorian then 2 - fix(y/100) + fix(y/400) else 0        
    C = if y < 0 then fix(365.25*y-0.75) else fix(365.25*y)
    D = fix(30.6001*(m+1))
    B+C+D+d+1720994.5

# Export
$blab.julian = julian
$blab.fix = fix
