'''Absorbance = k x path length x concentration
(Beer-Lambert principle) where k is the molar absorptivity 
( a measure of how well a chemical species absorbs a given wavelength of light)
'''
absorbance, coeff, p_length = map(float, input().split())
dna_concentration = absorbance/(coeff*p_length)
dna_concentration = round(dna_concentration, 1)
print(dna_concentration)

absorbance = 3.741 
coeff = 0.02 
p_length = 1


dna_concentration = round(absorbance/(coeff*p_length), 1) # using variables

# dna_concentration = round(dna_concentration, 1) # rounds to 1 decimal  place

print(dna_concentration) 
'''
Consider the ATP hydrolysis equation

ΔG = ΔG0 + RT * ln ([ADP] * [P_in] / [ATP])
'''
import math

deltaG = deltaG0 + R * T * math.log(ADP * P_in / ATP)

# round deltaG to required number of dps  as in last step

deltaG = round(deltaG, 3)

print(deltaG)