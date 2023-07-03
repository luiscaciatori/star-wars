import { Link, useNavigate } from "react-router-dom";

const NavBar = () => {
  const navigate = useNavigate();

  const onClickHandler = () => {
    localStorage.removeItem("user_token");
    navigate("/login");
  };

  return (
    <nav>
      <div className="flex flex-row h-16 justify-between">
        <div className="flex gap-2">
          <div className="py-5">
            <Link
              to="/planets"
              replace
              className="text-lg text-blue-800 hover:underline hover:text-blue-500"
            >
              Planets
            </Link>
          </div>
          <div className="py-5">
            <Link
              to="/people"
              replace
              className="text-lg text-blue-800 hover:underline hover:text-blue-500"
            >
              People
            </Link>
          </div>
          <div className="py-5">
            <Link
              to="/movies"
              replace
              className="text-lg text-blue-800 hover:underline hover:text-blue-500"
            >
              Movies
            </Link>
          </div>
        </div>

        <div className="py-5">
          <button
            className="text-lg text-blue-800 hover:underline hover:text-blue-500"
            onClick={onClickHandler}
          >
            Log out
          </button>
        </div>
      </div>
    </nav>
  );
};

export default NavBar;
