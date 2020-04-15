import GetMediaComponent from './GetMediaComponent.js';

export default {
    props: ['currentuser'],
 
    template:`
    <section id="dashboard">
    <header>
        <div id="logo" v-on:click="getHome()">
            <img src="images/logo_white.svg" alt="logo">
        </div>
        
        </div>
        </div>
        <div id="edit"><img src="images/heart_fill.svg" alt=""></div>
    </header>
    
    <div id="welcome">
        <h2>Welcome user! What shall we watch today?</h2>
    </div>

    <div class="filter">
        <div class="filter-type">
        <a href="Movies" @click.prevent="filterMediaType('Movies')">Movies</a>
        <a href="TVShows" @click.prevent="filterMediaType('TVShows')">TV Shows</a>
        <a href="Music" @click.prevent="filterMediaType('Music')">Music</a>
        </div>

        <div class="filter-Era">
        <a href="1950" @click.prevent="filterMedia('1950')">1950's</a>
        <a href="1960" @click.prevent="filterMedia('1960')">1960's</a>
        <a href="1970" @click.prevent="filterMedia('1970')">1970's</a>
        <a href="1980" @click.prevent="filterMedia('1980')">1980's</a>
        <a href="1990" @click.prevent="filterMedia('1990')">1990's</a>
        </div>
    </div>

    <article id="all-media">
        <media v-for="(media, index) in allFetchMedia" :mediaitem="media" @clicked="loadMovie" :key="index"></media>
    </article>

    <div :class="{ 'show-movie': showDetails, 'hide-lb': hideLightBox }">
        <p @click.prevent="close" @keydown.27="close">Back</p>
        <h4>{{mediaDetails.media_name}}</h4>
        <video controls :src="'media/' + mediaDetails.media_video" v-if="showDetails"></video>
    </div>

    </section>
   `,

 data() {
       return {
        nowuser:"",
        mediaDetails : {},
        allFetchMedia : [],
        showDetails : false,
        hideLightBox : true
       } 

    },

    created: function(){
     this.getAllMedia();

    },


    methods:{
        getAllMedia(){
            
            if(localStorage.getItem("cachedMedia")){
                this.allFetchMedia = JSON(localStorage.getItem("cachedMedia"));
                this.mediaDetails = this.allFetchMedia[0];

            } else {

            let url = `./admin/index.php?media=media`;

            fetch(url)
            .then(res => res.json())
            .then(data =>{
                this.allFetchMedia = data;
                this.mediaDetails = data[0];
            })
        }
    },

    filterMedia(filter){
        //debugger;
        let url=`./admin/index.php?media=media&filter=${filter}`;
        fetch(url)
        .then(res =>res.json())
        .then(data => {
            this.allFetchMedia = data;
            this.mediaDetails = data[0];
        })

    },

    filterMediaType(filter){

        let url=`./admin/index.php?media=media&filtertype=${filter}`;
        fetch(url)
        .then(res =>res.json())
        .then(data => {
            this.allFetchMedia = data;
            this.mediaDetails = data[0];
        }) 
    },

    loadMovie(lightbox){
        this.hideLightBox = false;
        this.mediaDetails = lightbox;
        this.showDetails= true;
    },

    close(){
        this.hideLightBox = true;
        this.showDetails = false;
        this.mediaDetails = {}; // to stop video player after lightbox close
        
    },
    
    getHome(){
        this.$router.push({ path: "/home"}); 
    }


    },
    
    components: {
        media : GetMediaComponent
    }

}