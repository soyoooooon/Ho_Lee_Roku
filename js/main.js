// import the login component first (actually all components here, but we're starting with login)
import LoginComponent from "./components/LoginComponent.js";
import homeComponent from "./components/homeComponent.js";

(() => {
 const router = new VueRouter({
    // mode: 'history', //delete#
    routes:[
      {path: '/', component: LoginComponent},
      {path: '/home', component: homeComponent}

    ]
      
  
  });


const vm = new Vue({
    data: {
      logined: false,
      administrator: false,
      user: [],
    },

    methods: {
      setLogin(status, data){
        this.logined = status;
        this.user = data;
      },

      logout() {
        // push user back to login page
        this.$router.push({ path: "/" });
        this.logined = false;
      }

    },

    router: router


}).$mount("#app");

router.beforeEach((to, from, next) => {
  //console.log('router guard fired!', to, from, vm.authenticated);

  if (vm.logined == false) {
    next("/");
  } else {
    next();
  }
});

})();