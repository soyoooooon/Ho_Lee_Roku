export default{
    template: `<section id="background">
        <div id="vid"><video src="images/example-bg.mp4" type="video.mp4" autoplay muted loop>           
        </video></div>
        <div id="transparent">
        <div id="logo"><img src="images/logo2.svg"></div>
        <form id="login-form"> 
        <input v-model="user" type="text" name="user" required placeholder="Username">
        <input v-model="password" type="password" name="password" required placeholder="Password">
        <button @click.prevent="submitUserData" type="submit" value="Log In">Log In</button>
        </form></div>
        </section>`,

        data: function(){
            return{
                user: "",
                password:""
            }
        },

        methods: {
            submitUserData() {
                //do a fetch here using the POST method
                //refer to the Node Mailer example from last semester as tp
                //how to get data from a form into a Fetch call using POST
               
                document.querySelector('form').reset();

                //reset the username and password data in our app
                this.user = "";
                this.password = "";
            }
        },

    created: function() {
        console.log('our app component rendered');
        
    }
};