#!/bin/bash

### Filter TED corpus ###

### Remove HTML tags
sed 's|\& amp ; amp ;|\&|g' train.ja-vi.ja | sed 's|\& amp ; lt ;|\<|g' | sed 's|\& amp ; gt ;|\>|g' > train.ja-vi.1.ja
mv train.ja-vi.1.ja train.ja-vi.ja
sed 's|\& amp ; amp ;|\&|g' train.ja-vi.tok.true.vi | sed 's|\& amp ; lt ;|\<|g' | sed 's|\& amp ; gt ;|\>|g' > train.ja-vi.vi 

sed 's|\& amp ; amp ;|\&|g' dev2010.ja-vi.clean.ja | sed 's|\& amp ; lt ;|\<|g' | sed 's|\& amp ; gt ;|\>|g' > dev2010.ja-vi.ja
sed 's|\& amp ; amp ;|\&|g' dev2010.ja-vi.clean.vi | sed 's|\& amp ; lt ;|\<|g' | sed 's|\& amp ; gt ;|\>|g' > dev2010.ja-vi.vi

sed 's|\& amp ; amp ;|\&|g' tst2010.ja-vi.clean.ja | sed 's|\& amp ; lt ;|\<|g' | sed 's|\& amp ; gt ;|\>|g' > tst2010.ja-vi.ja
sed 's|\& amp ; amp ;|\&|g' tst2010.ja-vi.clean.vi | sed 's|\& amp ; lt ;|\<|g' | sed 's|\& amp ; gt ;|\>|g' > tst2010.ja-vi.vi



### Standardize unicode
python ../tools/vietnameseNormUniStd.py train.ja-vi.vi train.ja-vi.unicode.vi
mv train.ja-vi.unicode.vi train.ja-vi.vi

python ../tools/vietnameseNormUniStd.py dev2010.ja-vi.vi dev2010.ja-vi.unicode.vi
mv dev2010.ja-vi.unicode.vi dev2010.ja-vi.vi

python ../tools/vietnameseNormUniStd.py tst2010.ja-vi.vi tst2010.ja-vi.unicode.vi
mv tst2010.ja-vi.unicode.vi tst2010.ja-vi.vi
