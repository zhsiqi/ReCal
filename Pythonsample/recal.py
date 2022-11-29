from nltk.metrics.agreement import AnnotationTask
from nltk.metrics import masi_distance
import pandas as pd
import pprint

df = pd.read_excel('answers.xlsx', header=0, engine='openpyxl') #!remember not to change the original names of the variables in the sheet

def multidata(n):
    a = 'L'+str(n)
    b = 'Y'+str(n)
    c = 'Z'+str(n)
    x = df[a]
    y = df[b]
    z = df[c]
    task_data = []
    for i in range(0,len(x)):
        Ltxt = str(x[i]).split('+')
        Litem = ('CoderL', str(i), frozenset(Ltxt))
        task_data.append(Litem) # add answers of coder Lian
        Ytxt = str(y[i]).split('+')
        Yitem = ('CoderY', str(i), frozenset(Ytxt))
        task_data.append(Yitem) # add answers of coder Yang
        Ztxt = str(z[i]).split('+')
        Zitem = ('CoderZ', str(i), frozenset(Ztxt))
        task_data.append(Zitem) # add answers of coder Zhang
    pprint.pprint(task_data)
    task = AnnotationTask(distance = masi_distance)
    task.load_array(task_data)
    print(a, b, c, task.alpha())

multidata(4)
multidata(6)
multidata(8)
multidata(14)
multidata(155)
multidata(22)
multidata(24)
