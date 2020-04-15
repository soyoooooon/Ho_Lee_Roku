import getUserComponent from './getUserComponent.js';
// import dashBoardComponent from './dashBoardComponent.js';


export default{

    template: `
    <section id="select-bg" :class="{ hidden: isHidden }">
        <header>
            <div id="logo">
                <img src="images/logo_white.svg" alt="">
            </div>
            <div class="logout-btn">
            <img src="images/logout.svg" alt="" @click="logoutHere()"></div>
        </header>
        <div class="watching-wrap">
            <div class="watching">
                <h2>Who's watching?</h2>
            
                <div class="userList">
                    <user v-for="(user , index) in userList" :liveuser="user" :key="index"></user>
                </div>
            </div>
        </div>
    </section>
    `,

    created: function () {
        this.fetchAllUsers();
    },

    data() {

        return{
            userList: [],
            isHidden: false,
            logined: true
        }

    },

    methods: {
        fetchAllUsers() {
            let url = ('./admin/admin_getusers.php?allusers=true');

            fetch(url)
            .then(res => res.json())
            .then(data => {
                this.userList = data;
            })
            .catch((err)=>console.error(err));
        },

        userSelected() {
            console.log ( this.liveuser.username );
            this.isHidden = true;
        },

        logoutHere(){
            //Hey Dilllll i just wanna test out login but seems to not work. 
            // we dont have log out icon. So i put menu svg in here sorry about that
            this.logined = false; //logined false doesnt work..
            localStorage.removeItem('cachedUser');
            // debugger;
            this.$router.push({ path: "/"}); 

        }

    },
    
    components: {

        user : getUserComponent
     
    }
};