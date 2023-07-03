const Column = ({ item }) => (
  <td className="text-left border border-blue-200 bottom-4 px-1 py-1">
    {item}
  </td>
);

const ColumnHeader = ({ item }) => (
  <th className="capitalize text-left border border-blue-200 bg-blue-600 px-2 py-2 text-white">
    {item.replaceAll("_", " ")}
  </th>
);

const Table = ({ rows, ignoredColumns = [] }) => {
  const keys = Object.keys(rows[0] || {}).filter(
    (key) => ignoredColumns.indexOf(key) < 0
  );

  return (
    <table className="w-full border-collapse border border-blue-200 rounded-lg">
      <thead className="table-header-group">
        <tr>
          {keys.map((key) => (
            <ColumnHeader key={key} item={key} />
          ))}
        </tr>
      </thead>
      <tbody className="table-row-group">
        {rows.map((row) => (
          <tr key={row.id}>
            {keys.map((key) => (
              <Column key={`${key}-${row.id}`} item={row[key]} />
            ))}
          </tr>
        ))}
      </tbody>
    </table>
  );
};

export default Table;
