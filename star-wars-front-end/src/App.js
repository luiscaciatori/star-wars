import { Route, Routes } from "react-router-dom";
import "./App.css";
import Login from "./Login";
import Movies from "./Movies";
import NavBar from "./Navbar";
import People from "./People";
import Planets from "./Planets";
import withAuth from "./auth";

function App() {
  return (
    <main className="container mx-auto">
      <Routes>
        <Route path="/login" element={<Login />} />
        <Route path="/movies" element={<Movies />} />
        <Route path="/people" element={<People />} />
        <Route path="/planets" element={<Planets />} />
      </Routes>
    </main>
  );
}

export default App;
