export default{
    template: `<section id="background">
        <div id="vid"><video src="images/example-bg.mp4" type="video.mp4" autoplay muted loop>           
        </video></div>
        <div id="transparent">
        <div id="logo"><img src="images/logo2.svg"></div>
        <form id="login-form"> 
        <input v-model="input.username" type="text" name="user" required placeholder="Username">
        <input v-model="input.password" type="password" name="password" required placeholder="Password">
        <button v-on:click.prevent="login()" type="submit" value="Log In">Log In</button>
        </form></div>
        </section>`,

        data: function(){
            return{
            input:{ 
                username: "",
                password:""
            },
            }
        },

        methods: {
            login() {

                if (this.input.username != "" && this.input.password != "") {
                    // fetch the user from the DB
                    // generate the form data
                    let formData = new FormData();
    
                    formData.append("username", this.input.username);
                    formData.append("password", this.input.password);
    
                    let url = `./admin/admin_login.php`;
    
                    fetch(url, {
                        method: 'POST',
                        body: formData
                    })
                        .then(res => res.json()) //get out data back from the php
                        .then(data => {
                            if (typeof data != "object") { // means that we're not getting a user object back
                                console.warn(data);
                                // just for testing
                                alert("authentication failed, please try again");
                            } else {

                                debugger;
                                this.$emit("logined", true, data);
                                this.$router.replace({ name: "users" });
                            }
                        })
                        .catch(function (error) {
                            console.log(error);
                        });
                } else {
                    console.log("A username and password must be present");
                }
            },
        },

    created: function() {
        console.log('our app component rendered');
        
    }
};