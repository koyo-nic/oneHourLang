from math import sqrt


def rectangle(l):
    return l[0] * l[1]


def triangle(l):
    p = float(l[0] + l[1] + l[2]) / 2
    return sqrt(p * (p - l[0]) * (p - l[1]) * (p - l[2]))


def circle(l):
    return 3.14 * l[0] ** 2


list1 = [('rectangle', 2, rectangle), ('triangle', 3, triangle), ('circle', 1, circle)]

fig = input()
t = [item for item in list1 if item[0] == fig][0]
l = [int(input()) for _ in range(t[1])]
print(t[2](l))

class Area:
    from math import sqrt
    PI = 3.14
    def rectangle(self, a, b):
        return a*b
    def circle(self, radius):
        return pi*(radius**2)
    def triangle(self, a,b,c):
        p = (a + b + c)/2
        return sqrt(p*(p-a)*(p-b)*(p-c))