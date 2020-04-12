import getUserComponent from './getUserComponent.js';


export default{
template: `
<section id="select-bg">
    <div class="watching">
        <h2>Who's watching</h2>
        <span class="user-edit">
            <img src="images/user_edit.svg">
            <img src="images/user_plus.svg">
        </span>
    </div>
    <div class="userList">
        <user v-for="(user , index) in userList" :liveuser="user" :key="index"></user>
    </div>
</section>`
,

created: function () {
    this.fetchAllUsers();
},

data() {

return{
    userList: []
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
    }

},
components: {

    user : getUserComponent
}
};