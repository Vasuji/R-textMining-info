
### Regular Expressions

- 1. Startwith
```
^i think
```
- 2. At the end
```
morning$
```
- 3. Both upper and lower case
```
[Bb][Uu][Hh]
```
- 4. Both allowed at begining of line
```
^[Ii] am
```
- 5. Character range
```
^[0-9][a-zA-Z],^[a-z],^[0-9] etc.
```
- 6. Character Class with [],ending not with "?" or "."
```
[^?.]$
```
- 7. Any character
```
"."
```
- 8. More Metacharacters
```
flood|fire  => "flood" or "Fire" anywhere in the line
^[Gg]ood|[Bb]ad   => "G/good" at begining or "bad" anywhere
[Gg]eorgr( [Ww]\.)? [Bb]ush => "George" and then "W/w" is optional and then "B/bush"
```
- 9 Metacharacters "." and "*"
```
(.*) => any character repeated any no of time within parenthesis
```
- 10 Atleast one number
```
[0-9]+ (.*)[0-9]+  => atleast one number and any character-repeated any time and atleast any number
```
- 11 Interval Qualifier
```
[Bb]ush( +[^ ]+ +){1,5} debate => Bush - atleast one space - followed by somthing that not space - 
- followed by atleast one space - that has to happen 1 to 5 times (like word space word) - debate
```
- 12 Replication of perticular phrase/word
```
+([a-zA-Z]+) +\1 +
```
- 13
```
^s(.*)s => start with "s" and end with "s". "*" are greedy!
^s(.*?)s$ => turn off greedyness 
```

