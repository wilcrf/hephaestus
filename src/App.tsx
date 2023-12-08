import "./App.css";
import logo from './assets/hephaestus.jfif';

function App() {
  return (
    <div className="container">
      <div id="title-container">
        <div id="title"></div>
        <img src={logo} alt="Logo" style={{width: '400px', height: '400px'}} />
      </div>
      <div id="control-pane">
        <h2></h2>
        
        <div id="login">
          <button id="login-button" title="Log in to your account">
            <i className="gg-user"></i> Log in
          </button>
        </div>
        
        <div id="project-actions">
          <button id="list-projects-button" title="List policies on the current access context">
            <i className="gg-sort-az"></i> List Policies
          </button>

          <button id="add-project-button" title="List AWS roles for the current context">
            <i className="gg-add"></i> List Roles
          </button>

          <button id="edit-project-button" title="Get role details and access policies currently attached to it">
            <i className="gg-edit-unmask"></i> List policies attached to a role
          </button>
        </div>
      </div>
    </div>
  );
}

export default App;
