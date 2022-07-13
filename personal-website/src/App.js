import './App.css';

function App() {
  return (
    <div className="App">
      <header className={"Header"}>
          <ul>
              <li><a>About me</a></li>
              <li><a href={"https://github.com/rider3458"}><img alt={"avatar"} className={"Avatar"} src={"avatar.png"}/></a></li>
              <li><a>This project</a></li>
          </ul>
      </header>
      <div className={"Personal-info" + " " + "Frame"}>
                <ul>
                    <li className={"info-row" + " " + "name"}>Du Duc Manh</li>
                    <li className={"info-row" + " " + "sid"}>s3878480</li>
                    <li className={"info-row" + " " + "major"}>IT (Cloud Technologies)</li>
                    <li className={"info-row" + " " + "skills"}>ReactJS, React Native, Java, Python</li>
                </ul>
      </div>
      <div className={"Project" + " " + "Frame"}>
      </div>
    </div>
  );
}

export default App;
