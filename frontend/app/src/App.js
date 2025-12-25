import React, { useEffect, useState } from "react";
import axios from "axios";

function App() {
  const [status, setStatus] = useState("Checking backend...");

  useEffect(() => {
    axios
      .get("/api/health")
      .then((response) => {
        setStatus(response.data);
      })
      .catch(() => {
        setStatus("Backend not reachable");
      });
  }, []);

  return (
    <div style={{ textAlign: "center", marginTop: "50px" }}>
      <h1>AWS DevOps 3-Tier Project</h1>
      <h2>Frontend (React)</h2>
      <p><b>Backend Status:</b> {status}</p>
    </div>
  );
}

export default App;

