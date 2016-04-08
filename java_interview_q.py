#!/usr/bin/env python
# https://programmingpraxis.com/2016/04/05/java-interview-question/

f = open('java_q_data.txt','r')
data = [l.rstrip().split('|') for l in list(f)]

def find_lowest_numbered_student_scores(input):
    scores = {}
    for line in input:
        if not line[1] in scores:
            scores[line[1]] = [line[0], line[2]]
        else:
            if scores[line[1]][0] > line[0]:
                scores[line[1]][0] = line[0]
                scores[line[1]][1] = line[2]
    return scores

print [("%s : %s" % (k, v[0])) for k,v in find_lowest_numbered_student_scores(data).items()]
