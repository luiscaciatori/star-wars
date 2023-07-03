import { useEffect, useState } from "react";
import { getRequest, IGNORED_COLUMNS } from "./utils";
import withAuth from "./auth";
import NavBar from "./Navbar";
import Table from "./Table";

const URL = "http://localhost:8000/api/v1/films";
const COLUMNS = ["opening_crawl", ...IGNORED_COLUMNS];

const Movies = () => {
  const [movies, setMovies] = useState([]);

  useEffect(() => {
    getRequest(URL, setMovies);
  }, []);

  return (
    <div>
      <NavBar />
      <Table rows={movies} ignoredColumns={COLUMNS} />
    </div>
  );
};

export default withAuth(Movies);
