
def bag(index,items,released,to_release,selection):
    if index>=len(items):
       return released,selection
    if items[index]['cap']+released>to_release:
       return bag(index+1,items,released,to_release,selection)
    rsed0,slctd0=bag(index+1,items,released,to_release,selection)
    selection[items[index]['name']]=True
    rsed1,slctd1=bag(index+1,items,released+items[index]['cap'],to_release,selection)
#    selection[items[index]['name']]=False
    if rsed0>rsed1:
       selection[items[index]['name']]=False
       return rsed0,slctd0
    return rsed1,slctd1

def test_1(items,target):
   selection={}
   for i in items: selection[i['name']]=False
   rd,sd=bag(0,items,0,target,selection)
   print('Items: ',items)
   print('Target: ',target)
   print('RELEASED: ', rd)
   print('Selected: ',sd)

if __name__=='__main__':
   
   items0=[{'name':'cero','cap':9},{'name':'uno','cap':4},{'name':'dos','cap':4},{'name':'tres','cap':4}]
   items1=[{'name':'cero','cap':5},{'name':'uno','cap':3},{'name':'dos','cap':3},{'name':'tres','cap':5},{'name':'cuatro','cap':6},{'name':'cinco','cap':5},{'name':'seis','cap':5}]
   test_1(items0,12)
   test_1(items1,20)
