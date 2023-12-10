import numpy as np
from scipy.signal import convolve2d
import matplotlib.pyplot as plt
from PIL import Image
import cv2

# Cargar la imagen
image_path = 'ruta_de_tu_imagen.jpg'
image = np.array(Image.open("../pomni.jpg"))

kernel_size = 5
blur_kernel = np.ones((kernel_size, kernel_size), dtype=np.float32) / (kernel_size * kernel_size)

# Obtener las dimensiones de la imagen y del kernel
height, width, _ = image.shape
k_height, k_width = blur_kernel.shape

# Inicializar la imagen resultante
blurred_image = np.zeros_like(image, dtype=np.float32)

# Aplicar la convolución manualmente
for i in range(height - k_height + 1):
    for j in range(width - k_width + 1):
        window = image[i:i+k_height, j:j+k_width, :]
        blurred_image[i, j, :] = np.sum(window * blur_kernel, axis=(0, 1))

# Convertir la imagen resultante de nuevo al rango de píxeles [0, 255]
blurred_image = np.clip(blurred_image, 0, 255).astype(np.uint8)

# Mostrar la imagen original y la imagen después del desenfoque
plt.subplot(1, 2, 1)
plt.imshow(cv2.cvtColor(image, cv2.COLOR_BGR2RGB))
plt.title('Imagen original')

plt.subplot(1, 2, 2)
plt.imshow(cv2.cvtColor(blurred_image, cv2.COLOR_BGR2RGB))
plt.title('Imagen después del desenfoque')

plt.show()
