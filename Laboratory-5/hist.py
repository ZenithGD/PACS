import cv2
import matplotlib.pyplot as plt
import numpy as np

# Cargar la imagen en color
imagen = cv2.imread('pomni.jpg')  # Reemplaza 'ejemplo.jpg' con la ruta de tu imagen

# Separar los canales de la imagen
canal_b, canal_g, canal_r = cv2.split(imagen)

# Calcular los histogramas para cada canal
histograma_b = cv2.calcHist([canal_b], [0], None, [256], [0, 256])
histograma_g = cv2.calcHist([canal_g], [0], None, [256], [0, 256])
histograma_r = cv2.calcHist([canal_r], [0], None, [256], [0, 256])

# Mostrar la imagen y los histogramas
plt.subplot(4, 1, 1)
plt.imshow(cv2.cvtColor(imagen, cv2.COLOR_BGR2RGB))
plt.title('Imagen')

plt.subplot(4, 1, 2)
plt.plot(histograma_b, color='blue')
plt.title('Histograma Canal Azul')

plt.subplot(4, 1, 3)
plt.plot(histograma_g, color='green')
plt.title('Histograma Canal Verde')

plt.subplot(4, 1, 4)
plt.plot(histograma_r, color='red')
plt.title('Histograma Canal Rojo')

plt.tight_layout()
plt.show()
