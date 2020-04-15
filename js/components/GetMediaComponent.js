export default {
    props: ['mediaitem'],

    template: `
    <div>
        <div class="media-item">
            <img :src="'images/' + mediaitem.media_image" @click.prevent="loadMovie(mediaitem)">
            <h3>{{mediaitem.media_name}}</h3>
        </div>

        <div :class="{ 'show-movie': showDetails, 'hide-lb': hideLightBox }">
            <h4>{{mediaDetails.media_name}}</h4>
            <video autoplay :src="'media/' + mediaDetails.media_video" v-if="showDetails">></video>
        </div>
    </div>
    `,

    data() {
        return{
            mediaDetails : {},
            allFetchMedia : [],
            showDetails : false,
            hideLightBox : true
        }
    },

    created: function() {
        // if (this.liveuser.avatar === null || this.liveuser.avatar === ""){
        //     this.liveuser.avatar = "user_icon.svg";
        // }

    },

    methods: {
        loadMovie(mediaDetails){
            console.log(mediaDetails);
            this.showDetails = true;
            this.hideLightBox = false;
            this.mediaDetails = lightbox;

        }
    },
    
}