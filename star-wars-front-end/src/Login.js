import { useState } from "react";
import { useNavigate } from "react-router-dom";

const URL = "http://localhost:8000/api/v1/sign_in";

const Login = () => {
  const navigate = useNavigate();
  const [username, setUsername] = useState("");
  const [password, setPassword] = useState("");
  const [hasInvalidLogin, setHasInvalidLogin] = useState(false);

  const onSubmitHandler = (e) => {
    e.preventDefault();

    const body = { user: { username: username, password: password } };

    fetch(URL, {
      method: "POST",
      body: JSON.stringify(body),
      headers: { "Content-Type": "application/json" },
    })
      .then((resp) => resp.json())
      .then((result) => {
        if (result.status == 200) {
          localStorage.setItem("user_token", result["token"]);

          navigate("/movies");
        } else {
          setHasInvalidLogin(true);
        }
      })
      .catch((err) => console.error("error", err));
  };

  return (
    <div>
      <form
        onSubmit={onSubmitHandler}
        className="bg-blue-200 mt-32 max-w-md rounded-md py-2 px-2"
      >
        <div className="flex flex-col">
          <label className="mb-2 font-semibold" htmlFor="username">
            Username
          </label>
          <input
            name="username"
            type="text"
            className="rounded-sm mb-2 py-1 px-1 rounded-md"
            value={username}
            onChange={(e) => setUsername(e.target.value)}
          />
        </div>

        <div className="flex flex-col mb-4">
          <label className="mb-2 font-semibold" htmlFor="password">
            Password
          </label>
          <input
            name="password"
            type="password"
            className="py-1 rounded-md px-1"
            value={password}
            onChange={(e) => setPassword(e.target.value)}
          />

          {hasInvalidLogin ? (
            <span className="mt-2 text-red-800 font-semibold">
              User or password invalid
            </span>
          ) : (
            ""
          )}
        </div>

        <input
          type="submit"
          value="Sign In"
          className="px-2 bg-green-700 text-white py-2 w-full rounded-md"
        />
      </form>
    </div>
  );
};

export default Login;
