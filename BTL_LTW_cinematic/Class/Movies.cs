using System;

namespace BTL_LTW_cinematic.Class
{
    public class Movies
    {
        public String movieName, moviePicture, movieDuration, movieCountry, movieDirector, movieActor, movieRelease, movieContent, movieRoom, movieShowTime;

        public Movies() { }
        public Movies(string movieName, string moviePicture, string movieDuration, string movieCountry, string movieDirector, string movieActor, string movieRelease, string movieContent, string movieRoom, string movieShowTime)
        {
            this.movieName = movieName;
            this.moviePicture = moviePicture;
            this.movieDuration = movieDuration;
            this.movieCountry = movieCountry;
            this.movieDirector = movieDirector;
            this.movieActor = movieActor;
            this.movieRelease = movieRelease;
            this.movieContent = movieContent;
            this.movieRoom = movieRoom;
            this.movieShowTime = movieShowTime;
        }
    }
}