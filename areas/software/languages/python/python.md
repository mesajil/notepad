# Python

## Run a file

```
py file.py
```

## Import

**En python no se exportan los módulos explícitamente**

1. **Importar un módulo completo**:

   **En este caso módulo hace referencia al nombre del archivo**

   ```python
   import math
   result = math.sqrt(16)  # Utiliza la función sqrt del módulo math
   ```

2. **Importar una función específica de un módulo**:

   ```python
   from math import sqrt
   result = sqrt(16)  # Utiliza directamente la función sqrt
   ```

3. **Importar un módulo con un alias**:

   ```python
   import numpy as np
   array = np.array([1, 2, 3, 4])
   ```

4. **Importar varias funciones de un módulo**:

   ```python
   from math import sqrt, pi
   result = sqrt(16)
   circle_area = pi * (radius ** 2)
   ```

5. **Importar todos los nombres de un módulo (no recomendado)**:
   ```python
   from math import *
   result = sqrt(16)
   circle_area = pi * (radius ** 2)
   ```

## Retornar Valores en Python

1. **Retornar un solo valor**:

   ```python
   def add(a, b):
       return a + b

   result = add(5, 3)  # result tendrá el valor 8
   ```

2. **Retornar múltiples valores**:

   ```python
   def get_user_info():
       name = "Alice"
       age = 30
       return name, age

   user_name, user_age = get_user_info()
   ```

3. **Retornar un valor condicionalmente**:

   ```python
   def check_even(number):
       return number % 2 == 0:

   is_even = check_even(4)  # is_even tendrá el valor True
   ```
