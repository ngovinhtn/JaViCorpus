#!/bin/bash

### Filter Glosbe corpus ###

### Filter bible
grep -ne '\-\s.*-' glosbe_train.ja-vi.vi | cut -d':' -f 1 > lines.bible
awk 'FILENAME=="lines.bible" { arr[$0]++} FILENAME=="glosbe_train.ja-vi.ja" {if(!(FNR in arr)) {print $0}}' lines.bible glosbe_train.ja-vi.ja > glosbe_train.filtered.ja
awk 'FILENAME=="lines.bible" { arr[$0]++} FILENAME=="glosbe_train.ja-vi.vi" {if(!(FNR in arr)) {print $0}}' lines.bible glosbe_train.ja-vi.vi > glosbe_train.filtered.vi


grep -ne '(' glosbe_train.filtered.vi | cut -d':' -f 1 > lines.parenthesis 
awk 'FILENAME=="lines.parenthesis" { arr[$0]++} FILENAME=="glosbe_train.filtered.ja" {if(!(FNR in arr)) {print $0}}' lines.parenthesis glosbe_train.filtered.ja > glosbe_train.filtered.bible.ja
awk 'FILENAME=="lines.parenthesis" { arr[$0]++} FILENAME=="glosbe_train.filtered.vi" {if(!(FNR in arr)) {print $0}}' lines.parenthesis glosbe_train.filtered.vi > glosbe_train.filtered.bible.vi

### Remove \ and /
sed 's|^\\ ||g' glosbe_train.filtered.bible.ja | sed 's| \\$||g' > glosbe_train.filtered.ja
sed 's|^\\ ||g' glosbe_train.filtered.bible.vi | sed 's| \\$||g' > glosbe_train.filtered.vi

### Remove lines that have one-char words
grep -ne ' [a-z] ' glosbe_train.filtered.vi | cut -d':' -f 1 > lines.onechar
awk 'FILENAME=="lines.onechar" { arr[$0]++} FILENAME=="glosbe_train.filtered.ja" {if(!(FNR in arr)) {print $0}}' lines.onechar glosbe_train.filtered.ja > glosbe_train.filtered.onechar.ja
awk 'FILENAME=="lines.onechar" { arr[$0]++} FILENAME=="glosbe_train.filtered.vi" {if(!(FNR in arr)) {print $0}}' lines.onechar glosbe_train.filtered.vi > glosbe_train.filtered.onechar.vi

### Remove lines that have the symbol /
grep -ne '\/' glosbe_train.filtered.onechar.vi | cut -d':' -f1 > lines.date
awk 'FILENAME=="lines.date" { arr[$0]++} FILENAME=="glosbe_train.filtered.onechar.ja" {if(!(FNR in arr)) {print $0}}' lines.date glosbe_train.filtered.onechar.ja > glosbe_train.filtered.ja
awk 'FILENAME=="lines.date" { arr[$0]++} FILENAME=="glosbe_train.filtered.onechar.vi" {if(!(FNR in arr)) {print $0}}' lines.date glosbe_train.filtered.onechar.vi > glosbe_train.filtered.vi

### Standardize unicode
python ../tools/vietnameseNormUniStd.py glosbe_train.filtered.vi glosbe_train.filtered.unicode.vi
mv glosbe_train.filtered.unicode.vi glosbe_train.filtered.vi
