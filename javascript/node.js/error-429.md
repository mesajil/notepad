## Origin:

Esta función se creo para manejar el error 429 (too many request)
en el proyecto de migración de datos de Shopify a Bigcommerce.

```javascript
// Función para aplicar un retraso
const delay = (ms) => new Promise((resolve) => setTimeout(resolve, ms));
const RETRY_AFTER = 16000;

const adjustInventory = async (products, multiplier = 1) => {
  const baseUrl = ``;

  let success = false;

  // Ciclo para manejar reintentos en caso de recibir el error 429
  while (!success) {
    try {
      // fetching ...

      success = true; // Salir del ciclo si la solicitud fue exitosa
    } catch (error) {
      if (error.response && error.response.status === 429) {
        // Manejar error 429 (Too Many Requests)
        const retryAfter = error.response.headers["x-retry-after"];
        const waitTime = retryAfter ? parseInt(retryAfter) * 1000 : RETRY_AFTER;
        console.log(
          `Demasiadas solicitudes, esperando ${
            waitTime / 1000
          } segundos antes de reintentar...`
        );
        await delay(waitTime);
      } else {
        // Lanzar el error si no es 429
        console.error(error);
        throw error;
      }
    }
  }
};

module.exports = adjustInventory;
```
