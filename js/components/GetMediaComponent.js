export default {
    props: ['mediaitem'],

    template: `
        <div class="media-item">
            <img :src="'images/' + mediaitem.media_image" @click.prevent="loadMovie(mediaitem)">
            <h3>{{mediaitem.media_name}}</h3>
        </div>
    `,

    data() {
        return{
            mediaDetails : {},
            allFetchMedia : [],
        }
    },

    created: function() {
        
    },

    methods: {
        loadMovie(mediaDetails){
            this.$emit('clicked', mediaDetails)
        }
    },
    
}