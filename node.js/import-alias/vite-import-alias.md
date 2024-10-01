# React + TypeScript + Vite

## Update `tsconfig.json`

Add this section:

```json
"compilerOptions": {
  "baseUrl": ".",
  "paths": {
    "@/*": ["src/*"]
  }
}
```

Config file would look like this:

```json
{
  "files": [],
  "references": [ ... ],
  "compilerOptions": {
    "baseUrl": ".",
    "paths": {
      "@/*": ["src/*"]
    }
  }
}
```

## Update `tsconfig.app.json`

Add this section:

```json
/* Paths */
"paths": {
  "@/*": ["./src/*"]
}
```

Config file would look like this:

```json
{
  "compilerOptions": {
    ...
    /* Paths */
    "paths": {
      "@/*": ["./src/*"]
    }
  },
  "include": ["src"]
}
```

## Update `vite.config.ts`

1. Install `vite-tsconfig-paths`:

```bash
npm i -D vite-tsconfig-paths
```

2. Import and add pluguin `tsconfigPaths`:

```typescript
import tsconfigPaths from 'vite-tsconfig-paths'
```

```typescript
plugins: [react(), tsconfigPaths()]
```

Config file would look like this:

```typescript
import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'
import tsconfigPaths from 'vite-tsconfig-paths'

// https://vitejs.dev/config/
export default defineConfig({
  plugins: [react(), tsconfigPaths()],
})
```
