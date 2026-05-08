/** @type {import('tailwindcss').Config} */
module.exports = {
  darkMode: 'class',
  content: [
    './site/public/**/*.html',
  ],
  theme: {
    extend: {
      colors: {
        // Material design tokens (merged superset across pages)
        "surface-container-high": "#e2e7ff",
        "on-primary-fixed": "#00174b",
        "surface-container": "#eaedff",
        "on-tertiary-container": "#e5f2ff",
        "inverse-on-surface": "#eef0ff",
        "secondary-fixed-dim": "#b1c7f0",
        "tertiary-container": "#0074a7",
        "on-secondary-container": "#465c7f",
        "on-primary-fixed-variant": "#003ea8",
        "on-primary-container": "#eeefff",
        "tertiary": "#005a83",
        "on-tertiary-fixed": "#001e2f",
        "surface-dim": "#d2d9f4",
        "primary-fixed-dim": "#b4c5ff",
        "primary-container": "#2563eb",
        "on-error-container": "#93000a",
        "surface-container-low": "#f2f3ff",
        "outline": "#737686",
        "on-surface": "#131b2e",
        "error-container": "#ffdad6",
        "surface-container-highest": "#dae2fd",
        "secondary": "#495f82",
        "on-secondary-fixed": "#001c3b",
        "background": "#faf8ff",
        "error": "#ba1a1a",
        "on-background": "#131b2e",
        "primary-fixed": "#dbe1ff",
        "surface-variant": "#dae2fd",
        "surface-tint": "#0053db",
        "tertiary-fixed": "#c9e6ff",
        "on-surface-variant": "#434655",
        "on-error": "#ffffff",
        "inverse-primary": "#b4c5ff",
        "on-primary": "#ffffff",
        "surface-bright": "#faf8ff",
        "on-secondary-fixed-variant": "#314769",
        "inverse-surface": "#283044",
        "secondary-fixed": "#d5e3ff",
        "tertiary-fixed-dim": "#8aceff",
        "on-tertiary-fixed-variant": "#004b6f",
        "surface": "#faf8ff",
        "secondary-container": "#bfd5fe",
        "on-tertiary": "#ffffff",
        "surface-container-lowest": "#ffffff",
        "outline-variant": "#c3c6d7",
        "primary": "#004ac6",
        "on-secondary": "#ffffff"
      },
      borderRadius: {
        DEFAULT: "0.25rem",
        lg: "1rem",
        xl: "1.5rem",
        full: "9999px"
      },
      fontFamily: {
        headline: ["Epilogue", "ui-sans-serif", "system-ui", "sans-serif"],
        display: ["Epilogue", "ui-sans-serif", "system-ui", "sans-serif"],
        body: ["Manrope", "ui-sans-serif", "system-ui", "sans-serif"],
        label: ["Manrope", "ui-sans-serif", "system-ui", "sans-serif"]
      }
    }
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/container-queries')
  ]
};
