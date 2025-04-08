d6 = {
        1: 10,
        2: 5,
        3: 7,
        4: 6,
        5: 9,
        6: 7
}

total = sum(d6.values())
perc = 0
for i in d6.keys():
    p = round(100*d6[i]/total)
    print(f"{i}: {p}%")
    perc += p

print(f"total: {total} ({perc}%)")
print(f"1/6={round(100*1/6)}%")
