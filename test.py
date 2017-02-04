import time
from itertools import repeat
from pprint import pprint
from steem import Steem

node = 'ws://steemd:8090'
s = Steem(node=node)

block_num = s.rpc.get_dynamic_global_properties()['head_block_number']
print(block_num)

for _ in repeat(None):
    print("\n\n%s" % s.rpc.url)
    pprint(s.rpc.get_block(block_num))
    time.sleep(3)

