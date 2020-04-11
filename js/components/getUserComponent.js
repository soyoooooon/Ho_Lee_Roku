
export default {
    props: ['liveuser'],

    template: `
    <div class="getUser">
        <div class="imageWrap" @click.prevent="userSelected()">
            <img :src="'images/' + liveuser.avatar" >
        </div>
        <p>{{ liveuser.username }}</p>
    </div>`,

    created: function() {
        if (this.liveuser.avatar === null || this.liveuser.avatar === ""){
            this.liveuser.avatar = "user_icon.svg";
        }

    },


    methods: {
        userSelected() {
            debugger;
        }
    }

}