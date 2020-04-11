
export default {
    props: ['liveuser'],

    template: `
    <div class="GetUser">
                <img :src="'images/' + liveuser.avatar" >
                <p>{{ liveuser.username }}</p>
        
    </div>`,

    created: function() {
        if (this.liveuser.avatar === null || this.liveuser.avatar === ""){
            this.liveuser.avatar = "user_plus.svg";
        }

    },


    methods: {
           


    }

}