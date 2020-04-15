export default {
    props: ['liveuser'],

    template: `
    <div class="getUser">
        <div class="imageWrap">
            <img :src="'images/' + liveuser.avatar" @click.prevent="userSelected()">
        </div>
        <p>{{ liveuser.username }}</p>
    </div>
    `,

    data() {
        return{
         userList: [],
        currentuser: ""
    }
    },

    created: function() {
        if (this.liveuser.avatar === null || this.liveuser.avatar === ""){
            this.liveuser.avatar = "user_icon.svg";
        }

    },

    methods: {
        


        userSelected() {
            // console.log(this.liveuser.username);
            localStorage.setItem('cachedUser', JSON.stringify(this.liveuser));

            if (this.liveuser.admin === "1") {
            this.$router.push({ path: "/main", params:{currentuser: this.liveuser }}).catch((err)=>console.error(err));
           
             //so params is not working here.... currentuser is undefined..dont know why Trevor save ma life....... 
             //Maximum call stack size exceeded ...//   
            
            }else{
                
                this.$router.push({ path: "/kid", params:{currentuser: this.liveuser }});
            }
        }
    }  
}