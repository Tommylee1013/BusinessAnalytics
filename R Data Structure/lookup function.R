# 조회 함수
search()
searchpaths() # paths

#ls(2)[1:30]
#ls(package.datasets)[1:5]

attributes(trees) # data의 attributes를 출력하는 듯 하다

print(attributes(trees)$names)
print(class(attributes(trees)))

print(attributes(trees)$class)
print(attributes(trees)$row.names)

names(trees)
class(trees)
row.names(trees)