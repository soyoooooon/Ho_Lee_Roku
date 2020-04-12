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

    data: {
        currentuser: ""
    },

    created: function() {
        if (this.liveuser.avatar === null || this.liveuser.avatar === ""){
            this.liveuser.avatar = "user_icon.svg";
        }

    },

    methods: {
        userSelected() {
            console.log(this.liveuser.username);
        }
    }

}