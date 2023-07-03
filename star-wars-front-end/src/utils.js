const getRequest = (url, setFunction) =>
  fetch(url, {
    headers: {
      "Content-Type": "application/json",
      Authorization:
        "Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE2ODg0MjE3MTF9.YFx6KsRdAomwfgEMW9TikdTzmlvpOwtgjmlKykzIayI",
    },
  })
    .then((resp) => resp.json())
    .then((result) => setFunction(result))
    .catch((err) => console.error(err));

const IGNORED_COLUMNS = ["url", "created_at", "updated_at"];

export { getRequest, IGNORED_COLUMNS };
