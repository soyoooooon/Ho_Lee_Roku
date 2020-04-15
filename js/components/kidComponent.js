import GetMediaComponent from './GetMediaComponent.js';

export default {
    props: ['currentuser'], //curentuser is not working...
 
    template:`
    <section id="kid" 
    :class="{ 'defaultBg': isDefault, 'movieBg': isMovie, 'tvBg': isTv, 'musicBg': isMusic}">
    <header>
        <div id="logo" v-on:click="getHome()">
            <img src="images/logo_white.svg" alt="">
        </div>
        <div class="imageWrap">
        </div>
        <div id="edit"><img src="images/heart_fill.svg" alt=""></div>
    </header>
    
    <div id="welcome">
        <h2>Welcome user! What shall we watch today?</h2>
    </div>

    <div class="filter">
        <div class="filter-type">
        <a id="movie-kid" href="Movies" @click.prevent="filterMediaType('Movies'); changeMovieBg();">
            <img src="./images/movie.svg" alt="movie"><br>Movies
        </a>
        <a id="tv-kid" href="TVShows" @click.prevent="filterMediaType('TVShows'); changeTvBg();">
            <img src="./images/tv_show.svg" alt="tv"><br>TV Shows
        </a>
        <a id="music-kid" href="Music" @click.prevent="filterMediaType('Music'); changeMusicBg();">
            <img src="./images/music.svg" alt="music"><br>Music
        </a>
        </div>

        <!--<div class="filter-Era">
        <a href="1950" @click.prevent="filterMedia('1950')">1950's</a>
        <a href="1960" @click.prevent="filterMedia('1960')">1960's</a>
        <a href="1970" @click.prevent="filterMedia('1970')">1970's</a>
        <a href="1980" @click.prevent="filterMedia('1980')">1980's</a>
        <a href="1990" @click.prevent="filterMedia('1990')">1990's</a>
        </div>-->
    </div>

    <article id="all-media">
        <media v-for="(media, index) in allFetchMedia" :mediaitem="media" @clicked="loadMovie" :key="index"></media>
    </article>

    <div :class="{ 'show-movie': showDetails, 'hide-lb': hideLightBox }">
        <p @click.prevent="close">Back</p>
        <h4>{{mediaDetails.media_name}}</h4>
        <video controls :src="'media/' + mediaDetails.media_video" v-if="showDetails"></video>
    </div>

    </section>
    `,

    data() {
        return {
            mediaDetails : {},
            allFetchMedia : [],
            showDetails : false,
            hideLightBox : true,
            isDefault: true,
            isMovie: false,
            isTv: false,
            isMusic: false
        } 
    },

    created: function(){
      this.getAllMedia();
 
    },
       //Hello Dil.. I made a lot of multible linking tables but i dont know how to utilized and I GOT SICK OF COding..
        // Hello Yoon.. I'm also REALLY SICK OF CODING HAHA

    methods:{
        getAllMedia(){
             //the default is kid section...cartoon etc.....so i made a table again
             if(localStorage.getItem("cachedMedia")){
                 this.allFetchMedia = JSON(localStorage.getItem("cachedMedia"));
                 this.mediaDetails = this.allFetchMedia[0];
 
             } else {
 
             let url = `./admin/index.php?media=media_kid`;
 
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
            // fixedddd ittt yayyy
            this.hideLightBox = false;
            this.mediaDetails = lightbox;
            this.showDetails = true;
        },

        close(){
            this.hideLightBox = true;
            this.showDetails = false;
            this.mediaDetails = {}; // to stop video player after lightbox close
        },

        changeMovieBg(){
            this.isDefault = false,
            this.isMovie = true;
            this.isTv = false;
            this.isMusic = false;
        },

        changeTvBg(){
            this.isDefault = false,
            this.isMovie = false;
            this.isTv = true;
            this.isMusic = false;
        },

        changeMusicBg(){
            this.isDefault = false,
            this.isMovie = false;
            this.isTv = false;
            this.isMusic = true;
        },

        getHome(){
            this.$router.push({ path: "/home"}); 
        }

    },
    
    components: {
        media : GetMediaComponent
    }

}
   