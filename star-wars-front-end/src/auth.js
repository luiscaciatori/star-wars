import { redirect, Navigate } from "react-router-dom";
import Login from "./Login";

const withAuth = (Component) => {
  const AuthRoute = () => {
    const token = localStorage.getItem("user_token");

    if (token) {
      return <Component />;
    } else {
      return <Navigate to="/login" replace />;
    }
  };

  return AuthRoute;
};

export default withAuth;
