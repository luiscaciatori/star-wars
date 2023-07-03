import { useEffect, useState } from "react";
import { getRequest, IGNORED_COLUMNS } from "./utils";
import withAuth from "./auth";
import NavBar from "./Navbar";
import Table from "./Table";

const URL = "http://localhost:8000/api/v1/planets";

const Planets = () => {
  const [planets, setPlanets] = useState([]);

  useEffect(() => {
    getRequest(URL, setPlanets);
  }, []);

  return (
    <div>
      <NavBar />
      <Table rows={planets} ignoredColumns={IGNORED_COLUMNS} />
    </div>
  );
};

export default withAuth(Planets);
