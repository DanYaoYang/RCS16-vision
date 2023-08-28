import random

random_choice = random.choice({'石头','剪刀','布','九劫剑'})
print("请出手：")
force = input()
s = random.sample(random_choice,1)
print(s)