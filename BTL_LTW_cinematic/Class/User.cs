namespace BTL_LTW_cinematic.Class
{
    public class User
    {
        public string fullName, phoneNum, birth, userName, passWord;

        public User() { }

        public User(string fullName, string phoneNum, string birth, string userName, string passWord)
        {
            this.fullName = fullName;
            this.phoneNum = phoneNum;
            this.birth = birth;
            this.userName = userName;
            this.passWord = passWord;
        }
    }
}