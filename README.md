# Git-stats
This script generates a monthly time serie of git's commits.

## Samples
=======
1. Show all monthly commits of specified author in current year
```bash
$ ./git-st.sh Sergio
01/01/2017 85
01/02/2017 43
01/03/2017 76
01/04/2017 42
01/05/2017 94
01/06/2017 104
01/07/2017 65
01/08/2017 13
01/09/2017 0
01/10/2017 0
01/11/2017 0
01/12/2017 0
```
2. Show all monthly commits of specified author after specified year
$ ./git-st.sh Sergio 2016
```bash
01/01/2016 16
01/02/2016 15
01/03/2016 3
01/04/2016 0
01/05/2016 2
01/06/2016 1
01/07/2016 6
01/08/2016 6
01/09/2016 0
01/10/2016 8
01/11/2016 31
01/12/2016 49
01/01/2017 85
01/02/2017 43
01/03/2017 76
01/04/2017 42
01/05/2017 94
01/06/2017 104
01/07/2017 65
01/08/2017 13
01/09/2017 0
01/10/2017 0
01/11/2017 0
01/12/2017 0
```

3. Show all monthly commits of specified author between specified years
$ ./git-st.sh Sergio 2015 2016
```bash
01/01/2015 24
01/02/2015 55
01/03/2015 31
01/04/2015 52
01/05/2015 28
01/06/2015 25
01/07/2015 48
01/08/2015 16
01/09/2015 17
01/10/2015 15
01/11/2015 36
01/12/2015 7
01/01/2016 16
01/02/2016 15
01/03/2016 3
01/04/2016 0
01/05/2016 2
01/06/2016 1
01/07/2016 6
01/08/2016 6
01/09/2016 0
01/10/2016 8
01/11/2016 31
01/12/2016 49
```
