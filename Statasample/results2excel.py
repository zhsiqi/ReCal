# extract many reliability numbers from results and export them to excel

import pandas as pd

f = open('20210802result.txt', mode = 'r', encoding = 'utf-8')

textlist = f.readlines()
outputline = []

# 取出信度结果和变量搭配所在的行
for q in textlist:
    q = q.strip()
    if '_' in q or 'Nominal    ' in q:
        if 'variables' not in q and 'kalpha' not in q and 'krippalpha' not in q:
            outputline.append(q.strip('Nominal      '))

# 进一步清理，信度结果那一行只保留alpha值
for i in range(0, len(outputline)):
    if i % 2 == 0:
        outputline[i] = outputline[i][0:5]
print(outputline)

# 新建13个列表、1个字典用于存储13个变量的不同编码员组合的信度。
# 编码员组合有4种
data = {}
for j in range(0,4): #j是列表数量,尾巴是变量数量
    listrow = []
    for l in range(0, len(outputline)):
        if l // 8 == j and l % 2 == 0: # 8=4*2，这两个数字不用变
            num = format(eval(outputline[l]), '.4f') #将字符串转换为数字，取四位小数
            listrow.append(num)
    print('列表',j+1,listrow)
    data['变量'+str(j+1)] = listrow

print(data)

# 一个列表存储编码员组合作为行的索引
''' 注意，下面的顺序不是随便写的，一定是要根据《编码输出》文件的outputline里面的实际顺序来的。但由于outputline的顺序也是按照文件
编码变量名.py输出的来的，所以基本上不会有错误，但也要检查一下
'''
coderlist = ['c1+c2+c3', 'c1+c2', 'c1+c3', 'c2+c3']

# 创建数据框
d1 = pd.DataFrame(data, index = coderlist)
print(d1)

# 将数据导出
d1.to_excel("数据清洗结果.xlsx", index=coderlist)

f.close()
