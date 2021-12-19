#
# Ingenious function to detect encoding
#
class Mystring:
    #
    @staticmethod
    def cstr(q):
        codings = ['latin1', 'utf8', 'cp1251', 'unicode-escape', 'cp866']
        exceptions = ['ignore', 'strict', 'xmlcharrefreplace', 'backslashreplace']
        for i in codings:
            for j in codings:
                for z in exceptions:
                    for p in exceptions:
                        try:
                            print(q.encode(i, errors=z).decode(j, errors=p) + '<------' + i + ' ' + j + ' ' + z + ' ' + p)
                        except:
                            pass
#
s = '\xd0\xbf\xd1\x80\xd0\xb8\xd0\xb2\xd0\xb5\xd1\x82'
Mystring.cstr(s)
#