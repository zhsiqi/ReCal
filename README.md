# ReCal
calculate reliability for multiple Coders and multiple choice questions

## for multiple coders
Krippendorff's Alpha
- Stata<br>
  package ```krippalpha``` from [http://fmwww.bc.edu/RePEc/bocode/k](http://fmwww.bc.edu/RePEc/bocode/k)   <br>
  Authors: Alexander Staudt, Mona Krewel   <br>

- SPSS<br>
  macro ```Kalpha``` from [https://www.afhayes.com/public/kalpha.zip](https://www.afhayes.com/public/kalpha.zip)<br>
  Author: Andrew Hayes   <br>

- Python<br>
  ```alpha()``` in ```nltk.metrics.agreement.AnnotationTask```   <br>
  from [https://www.nltk.org/api/nltk.metrics.agreement.html](https://www.nltk.org/api/nltk.metrics.agreement.html)   <br>

## for multiple choice questions
```
nltk.masi_distance(label1, label2)
```
> Distance metric that takes into account partial agreement when multiple labels are assigned.
[https://tedboy.github.io/nlps/generated/generated/nltk.masi_distance.html](https://tedboy.github.io/nlps/generated/generated/nltk.masi_distance.html)
