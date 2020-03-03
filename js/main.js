// import the login component first (actually all components here, but we're starting with login)
import LoginComponent from "./components/LoginComponent.js"

(() => {
  let router = new VueRouter({
    // set routes
    routes: [
      
      { path: '/login', name: "login", component: LoginComponent },
    ]
  });

})();