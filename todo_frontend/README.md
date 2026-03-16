# Todo Frontend – React Application

A simple, modern, and responsive todo application built with React.  
This project serves as the user interface for managing todo items, including creating, viewing, updating, deleting, and toggling their completed status, with persistence handled via the browser's localStorage.  

## Table of Contents

- [Features](#features)
- [Architecture](#architecture)
- [Setup & Getting Started](#setup--getting-started)
- [Scripts](#scripts)
- [Environment Variables](#environment-variables)
- [UI & Theme](#ui--theme)
- [Project Structure](#project-structure)
- [Dependencies](#dependencies)
- [Development Notes](#development-notes)
- [License](#license)

---

## Features

- **Add Todos:** Create new todo items.
- **View Todos:** See your list of todos at a glance.
- **Toggle Complete:** Mark items as completed or active.
- **Delete Todos:** Remove items from your list.
- **Local Storage Persistence:** Todos are saved in the browser and persist between sessions.
- **Responsive Design:** Usable on desktops, tablets, and mobile devices.
- **Retro Theme Preference:** Users can toggle a retro (dark/light) theme.
- **Minimal & Modern UI:** Simple, accessible, and clean interface.
- _Optional:_ Basic filtering by status (all/active/completed) support can be added.

---

## Architecture

This project uses a **monolithic frontend architecture**:
- All logic (UI and state management) resides client-side within the React SPA.
- Data persistence for todos is managed in `localStorage` – there is no backend database or external API.
- The design emphasizes modular, reusable components and separation of UI and business logic.
- The retro theming is provided via CSS custom properties, allowing toggling between light and dark modes at runtime.

---

## Setup & Getting Started

### Prerequisites

- Node.js (>=14) and npm installed on your machine

### Installation

1. Enter the frontend directory:
   ```sh
   cd todo_frontend
   ```
2. Install dependencies:
   ```sh
   npm install
   ```
3. Start the development server:
   ```sh
   npm start
   ```
4. Open your browser at [http://localhost:3000](http://localhost:3000) to view the app.

---

## Scripts

- `npm start` - Runs the app in development mode.
- `npm test` - Launches the test runner.
- `npm run build` - Builds the app for production to the `build` folder.
- `npm run eject` - Ejects configuration (not reversible, use with caution).

---

## Environment Variables

The app includes a `.env` file with the following variables (though the current frontend is standalone):

- `REACT_APP_API_BASE`
- `REACT_APP_BACKEND_URL`
- `REACT_APP_FRONTEND_URL`
- `REACT_APP_WS_URL`
- `REACT_APP_NODE_ENV`
- `REACT_APP_NEXT_TELEMETRY_DISABLED`
- `REACT_APP_ENABLE_SOURCE_MAPS`
- `REACT_APP_PORT`
- `REACT_APP_TRUST_PROXY`
- `REACT_APP_LOG_LEVEL`
- `REACT_APP_HEALTHCHECK_PATH`
- `REACT_APP_FEATURE_FLAGS`
- `REACT_APP_EXPERIMENTS_ENABLED`

_Note:_ Most of these are not used unless integrating with an API. For purely local operation (with localStorage), these can be left as defaults.

---

## UI & Theme

- **Retro Theme:** The application supports toggling between light and dark "retro" themes using a button at the top-right.
- **Customization:** Colors and CSS variables can be changed in `src/App.css`.
- **Responsiveness:** The layout adapts for mobile, tablet, and desktop.
- **Fonts:** Uses a modern webfont for a clean appearance.

---

## Project Structure

```
todo_frontend/
├── public/
│   ├── favicon.ico
│   ├── index.html
│   └── manifest.json
├── src/
│   ├── App.js
│   ├── App.css
│   ├── index.js
│   ├── index.css
│   └── (other components)
├── .env
├── package.json
├── README.md
└── ...
```

- `src/App.js` – Main application component. Manages theme toggling and core UI.
- `src/App.css` – Contains styles including theming and responsive design.
- Components for todos (input, list, item, filters) would be placed in `src/` or a `components/` subfolder.

---

## Dependencies

Core dependencies:
- [React](https://reactjs.org/) ^18.2.0
- [react-dom](https://www.npmjs.com/package/react-dom)
- [react-scripts](https://www.npmjs.com/package/react-scripts)

Dev dependencies:
- [cross-env](https://www.npmjs.com/package/cross-env)

---

## Development Notes

- Built using React functional components and hooks (`useState`, `useEffect`), as recommended in React 17+.
- State is managed in component state; todos are read/written to `localStorage`.
- No backend, server API, or database is involved unless you expand the app.
- Accessibility (a11y) and keyboard navigation are considered in UI design.
- For advanced configuration, bundle analysis, and deployment, see the [Create React App documentation](https://facebook.github.io/create-react-app/docs/getting-started).

---

## License

MIT License.

---

## Credits

Template and structure initially based on KAVIA starter React template.

---

