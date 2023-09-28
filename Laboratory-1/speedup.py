import pandas as pd
import numpy as np

o0df = pd.read_csv("times-o0.csv")
o2df = pd.read_csv("times-o2.csv")

print("partial speedups:", np.array(o0df["Manual"]) / np.array(o2df["Manual"]))
print("vec over novec (O0):", np.array(o0df["Non Vectorized"]) / np.array(o0df["Vectorized"]))
print("  avg: ", np.mean(np.array(o0df["Non Vectorized"]) / np.array(o0df["Vectorized"])))
print("vec over novec (O2):", np.array(o2df["Non Vectorized"]) / np.array(o2df["Vectorized"]))
print("  avg: ", np.mean(np.array(o2df["Non Vectorized"]) / np.array(o2df["Vectorized"])))