// import the login component first (actually all components here, but we're starting with login)
import LoginComponent from "./components/LoginComponent.js";
import homeComponent from "./components/homeComponent.js";
import dashBoardComponent from "./components/dashBoardComponent.js"
import kidComponent from "./components/kidComponent.js";
// import errorComponent from "./components/errorComponent.js";


(() => {
 const router = new VueRouter({
    // mode: 'history', //delete#

    routes:[
      {path: '/', component: LoginComponent},
      {path: '/home', component: homeComponent, props: true},
      {path: '/main', component: dashBoardComponent, name:'main', props: true},
      {path: '/kid', component: kidComponent},

      // {path: '*', component: errorComponent}
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

        if(localStorage.getItem('cachedUser')) {
          localStorage.removeItem('cachedUser');
        }
      }

    },
    created: function(){

      if (localStorage.getItem('cachedUser')){
        let user = JSON.parse(localStorage.getItem('cachedUser'));
        this.logined = true;
          //if you dont like it get rid of this... i dont like a computer remebers my info lol
        this.$router.push({ path: "/home", params:{currentuser: user}}); 

        
      }

    },

    router: router


}).$mount("#app");

// router.beforeEach((to, from, next) => {
//   //console.log('router guard fired!', to, from, vm.authenticated);

//   if (vm.logined == false) {
//     next("/");
//   } else {
//     next();
//   }
// });

})();