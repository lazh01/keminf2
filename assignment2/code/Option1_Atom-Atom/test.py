import pydoStuff
from pydoStuff import *

# sanity check for multiple copies of libMØD
modValue = mod.magicLibraryValue()
ourValue = pydoStuff.magicLibraryValue()
if modValue != ourValue:
	print("mod =", modValue)
	print("our =", ourValue)
	raise Exception("Magic values differ! I.e., more than one instance of libmod has been loaded.")
# end of sanity check

# make doStuff a bit more friendly to use
_doStuff_orig = pydoStuff.doStuff
def _doStuff(educts, products, c: int, k: int):
	return mod._unwrap(_doStuff_orig(
		mod._wrap(mod.VecGraph, educts),
		mod._wrap(mod.VecGraph, products), c, k))
pydoStuff.doStuff = _doStuff
doStuff = _doStuff
# end of friendlyfier code

#g1 = smiles("OCC=O")
#g2 = smiles("OC=CO")
g1 = smiles("O")
g2 = smiles("Cl")
g3 = smiles("CC(=O)OCC")
g4 = smiles("Cl")
g5 = smiles("OCC")
g6 = smiles("CC(=O)O")
c = 6
k = 0
res = doStuff([g1, g2, g3], [g4, g5, g6], c, k)
for a in res:
	a.print()