import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'

export default defineConfig({
  plugins: [react()],
  server: {
    allowedHosts: [
      '5173-hubertdzied-awsexamples-x885lnf5n4g.ws-eu120.gitpod.io'
    ]
  }
})
