// import the login component first (actually all components here, but we're starting with login)
import LoginComponent from "./components/LoginComponent.js"

(() => {
 const router = new VueRouter({
    // mode: 'history', //delete#
    routes:[
      {path: '/', component: LoginComponent}

    ]
      
  
  });


const vm = new Vue({
    data: {

    },

    method: {

    },

    router


}).$mount("#app");

})();