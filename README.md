# Japanese-Vietnamese Parallel Corpora
This repository contains Japanese-Vietnamese parallel corpora collected from publicly available sources/projects and used in our Japanese-Vietnamese Machine Translation research works. It includes:

*  TED talks extracted from [WIT3](https://wit3.fbk.eu/mono.php?release=XML_releases&tinfo=cleanedhtml_ted): 106K sentence pairs
*  Wiki data from [Asian Language Treebank](http://www2.nict.go.jp/astrec-att/member/mutiyama/ALT/): 20K sentence pairs
*  Tatoeba corpus from [OPUS project](http://opus.nlpl.eu/Tatoeba.php): 2K sentence pairs
*  [Globse](https://glosbe.com/): Various genres and domains: 282K
*  Development and test sets are TED talks which are not in the TED training set above.

Among those corpora, the Globse corpus is the largest but the most noisy one. Other corpora have good translation and alignment quality. We also provide some scripts to filter bad sentence pairs and to preprocess the data. Those scripts can be found in each corpus' directory. The repository would be continuously updated as we are collecting more data.

Updated on 13/2/2020 (Preprocessed version of those corpora will be uploaded later):
*  QED - An open multilingual collection of subtitles for *educational* videos and lectures collaboratively transcribed and translated over the AMARA web-based platform: 230K sentence pairs
*  JW300 - A Wide-Coverage Multilingual Corpus mostly crawled from the magazines **Awake!** and **Watchtower** which stem from *religious* society: 712K sentence pairs
*  OpenSubtitles: Collection of translated *movie subtitles* from http://www.opensubtitles.org: 679K sentence pairs

Notes on those updated corpora:
*  QED is a good corpus, similar to TED (but currently bigger), however its sentence-alignment is not perfect.
*  JW300 and Open Subtitles should not be used in MT without applying a proper data selection method.


## How to cite

You should cite the corresponding publications for each corpus:
*  **TED**: M. Cettolo, C. Girardi, and M. Federico. 2012. "WIT3: Web Inventory of Transcribed and Translated Talks". In Proc. of EAMT, pp. 261-268, Trento, Italy.
*  **ALT**: Hammam Riza, Michael Purwoadi, Gunarso, Teduh Uliniansyah, Aw Ai Ti, Sharifah Mahani Aljunied, Luong Chi Mai, Vu Tat Thang, Nguyen Phuong Thai, Vichet Chea, Rapid Sun, Sethserey Sam, Sopheap Seng, Khin Mar Soe, Khin Thandar Nwet, Masao Utiyama, Chenchen Ding. 2016. "Introduction of the Asian Language Treebank". Oriental COCOSDA.
*  **Tatoeba** : J. Tiedemann. 2012. "Parallel Data, Tools and Interfaces in OPUS". In Proceedings of the 8th International Conference on Language Resources and Evaluation (LREC 2012).
*  **QED**: A. Abdelali, F. Guzman, H. Sajjad and S. Vogel. 2014 "The AMARA Corpus: Building parallel language resources for the educational domain". The Proceedings of the 9th International Conference on Language Resources and Evaluation (LREC'14). Reykjavik, Iceland, 2014. Pp. 1856-1862. Isbn. 978-2-9517408-8-4. 
*  **JW300**: Željko Agić, Ivan Vulić. 2019. "JW300: A Wide-Coverage Parallel Corpus for Low-Resource Languages". In Proceedings of the 57th Annual Meeting of the Association for Computational Linguistics (ACL), Florence, Italy, 2019. 
*  **OpenSubtitles**: P. Lison and J. Tiedemann. 2016. "OpenSubtitles2016: Extracting Large Parallel Corpora from Movie and TV Subtitles". In Proceedings of the 10th International Conference on Language Resources and Evaluation (LREC 2016)


Also you should acknowledge the following work if you use **QED**, **JW300**, **OpenSubtitles** from here: J. Tiedemann. 2012. "Parallel Data, Tools and Interfaces in OPUS". In Proceedings of the 8th International Conference on Language Resources and Evaluation (LREC 2012).

But if you appreciate our efforts in collecting, *compiling and preprocessing* those corpora, please do cite our paper:

Thi-Vinh Ngo, Thanh-Le Ha, Phuong-Thai Nguyen, Le-Minh Nguyen: [Combining Advanced Methods in Japanese-Vietnamese Neural Machine Translation](https://arxiv.org/pdf/1805.07133.pdf). Proceedings of the 10th International Conference on Knowledge and Systems Engineering (KSE 2018), Hochiminh City, Vietnam.

Bibtex:
```
@inproceedings{Ngo2018Combining,
  author    = {Thi{-}Vinh Ngo and
               Thanh{-}Le Ha and
               Phuong{-}Thai Nguyen and
               Le{-}Minh Nguyen},
  title     = {Combining Advanced Methods in Japanese-Vietnamese Neural Machine Translation},
  booktitle = {{Proceedings of the 10th International
Conference on Knowledge and Systems Engineering (KSE 2018)}},
  year      = {2018},
  address   = {Hochiminh City, Vietnam},
  url       = {https://arxiv.org/pdf/1805.07133.pdf}
}
```
