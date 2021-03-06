#!/usr/bin/python3
# 
#  Copyright (c) 2017 Erik Bosman <erik@minemu.org>
# 
#  Permission  is  hereby  granted,  free  of  charge,  to  any  person
#  obtaining  a copy  of  this  software  and  associated documentation
#  files (the "Software"),  to deal in the Software without restriction,
#  including  without  limitation  the  rights  to  use,  copy,  modify,
#  merge, publish, distribute, sublicense, and/or sell copies of the
#  Software,  and to permit persons to whom the Software is furnished to
#  do so, subject to the following conditions:
# 
#  The  above  copyright  notice  and this  permission  notice  shall be
#  included  in  all  copies  or  substantial portions  of the Software.
# 
#  THE SOFTWARE  IS  PROVIDED  "AS IS", WITHOUT WARRANTY  OF ANY KIND,
#  EXPRESS OR IMPLIED,  INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
#  MERCHANTABILITY,  FITNESS  FOR  A  PARTICULAR  PURPOSE  AND
#  NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS
#  BE LIABLE FOR ANY CLAIM,  DAMAGES OR OTHER LIABILITY, WHETHER IN AN
#  ACTION OF CONTRACT,  TORT OR OTHERWISE,  ARISING FROM, OUT OF OR IN
#  CONNECTION  WITH THE SOFTWARE  OR THE USE  OR OTHER DEALINGS IN THE
#  SOFTWARE.
# 
#  (http://opensource.org/licenses/mit-license.html)
#

import sys

max_val=0x0f00
cut_off = 0x18
gamma=2.5

if len(sys.argv) >= 2:
    max_val = min(0xff00, int(sys.argv[1],0))

if len(sys.argv) >= 3:
    cutoff = min(0x7f, int(sys.argv[2],0))

if len(sys.argv) >= 4:
    gamma = float(sys.argv[3])

print ("/* this file was auto-generated by gamma_map.py (max_val={}, cut_off={}, gamma={}) */".format(hex(max_val), hex(cut_off), gamma))
print ("#include <stdint.h>")

factor = max_val / (255.**gamma)
gamma16 = [ int(x**gamma * factor) for x in range(256) ]

for i,v in enumerate(gamma16):
    lo, hi = v&0xff, v>>8
    if lo <= cut_off/2:
        lo = 0
    elif lo < cut_off:
        lo = cut_off
    elif lo > 256-cut_off/2:
        lo, hi = 0, min(hi+1, max_val>>8)
    elif lo > 256-cut_off:
        lo = 256-cut_off
    gamma16[i] = lo | (hi<<8)

print ("""
const uint16_t gamma_map[256] =
{
 """+','.join(hex(x) for x in gamma16)+""",
};
""")
