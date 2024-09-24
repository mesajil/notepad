### Using PostCSS

#### a. Instalar Tailwind CSS y sus dependencias

```bash
npm install -D tailwindcss postcss autoprefixer
```

#### b. Inicializar Tailwind CSS

```bash
npx tailwindcss init -p
```

Esto creará dos archivos: `tailwind.config.js` y `postcss.config.js`.

#### c. Configurar el archivo `tailwind.config.js`

Edita el archivo `tailwind.config.js` para que Tailwind pueda purgar los estilos no utilizados en producción. Asegúrate de incluir las rutas correctas a tus archivos.

```javascript
module.exports = {
  content: ['./index.html', './src/**/*.{html,js,ts,jsx,tsx}'],
  theme: {
    extend: {},
  },
  plugins: [],
}
```

#### d. Añadir las Directivas de Tailwind en tu CSS

Crea o edita el archivo CSS principal (por defecto, suele ser `src/index.css`) para incluir las directivas de Tailwind.

```css
@tailwind base;
@tailwind components;
@tailwind utilities;
```

#### e. Start using Tailwind

Make sure your compiled CSS is included in the `<head>` (your framework might handle this for you), then start using Tailwind’s utility classes to style your content.

```html
<h1 class="text-3xl font-bold underline">Hello world!</h1>
```

#### f. Start your build process

Run your build process with `npm run dev` or whatever command is configured in your `package.json` file.

```bash
npm run dev
```
