import re
from collections import defaultdict


#open book, lowercasing everything, creating a list of all of the words(even dupes)
f = open('odyssey.txt', encoding = 'utf-8')
odyssey = f.read().lower()
odyssey_words = re.findall('[a-z]+', odyssey)
f.close()

def main():
    #write to all words text file
    f = open('allwords.txt', 'w')
    for word in odyssey_words:
        f.write(word + '\n')
    f.close()


    #creating unique words text file by creating default dictionary of words and filtering which ones have a key value of 1
    uniquewords = defaultdict(lambda: 0)
    for word in odyssey_words:
        uniquewords[word] += 1


    f = open('uniquewords.txt', 'w')
    for word in uniquewords:
        if uniquewords[word] == 1:
            f.write(word + '\n')
    f.close()



    #creating word frequency text file by creating a default dictionary of frequencies and sorting them 

    wordfreq = defaultdict(lambda: 0)
    for freq in uniquewords.values():
        wordfreq[freq] += 1
    wordfreq_sort = sorted(wordfreq.items())
    wordfreq = dict(wordfreq_sort)


    f = open('wordfrequency.txt', 'w')
    for freq in wordfreq:
        f.write(str(freq) + ':' + str(wordfreq[freq]) + '\n')
    f.close()
    
main()