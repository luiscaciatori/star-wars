import { useEffect, useState } from "react";
import { getRequest, IGNORED_COLUMNS } from "./utils";
import withAuth from "./auth";
import Table from "./Table";
import NavBar from "./Navbar";

const URL = "http://localhost:8000/api/v1/people";

const People = () => {
  const [people, setPeople] = useState([]);

  useEffect(() => {
    getRequest(URL, setPeople);
  }, []);

  return (
    <div>
      <NavBar />
      <Table rows={people} ignoredColumns={IGNORED_COLUMNS} />
    </div>
  );
};

export default withAuth(People);
