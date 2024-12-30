using System;

namespace BTL_LTW_cinematic.Class
{
    public class Movie_Tickests
    {
        public String bName, bMovieName, bShowTime, bDayRelease, bRoom, bTicket, bTicketID, bMoney;

        public Movie_Tickests() { }

        public Movie_Tickests(string bName, string bMovieName, string bShowTime, string bDayRelease, string bRoom, string bTicket, string bTicketID, string bMoney)
        {
            this.bName = bName;
            this.bMovieName = bMovieName;
            this.bShowTime = bShowTime;
            this.bDayRelease = bDayRelease;
            this.bRoom = bRoom;
            this.bTicket = bTicket;
            this.bTicketID = bTicketID;
            this.bMoney = bMoney;
        }
    }
}