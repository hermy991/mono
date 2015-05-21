using SGPP.GSPPModels.UC;
using SGPP.Models;
using SGPP.Repository.DEF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Transactions;
using System.Web;

namespace SGPP.Repository.UC
{
    public class CUserRepo
    {
        //Objeto de la Base de Datos SGPP
        public SGPPEntities dbSGPP = new SGPPEntities();
        //Objeto de la Tabla Person
        public User tUser = new User();
        CPersonRepo objPers;
        //Para Mensage de Error
        string message = "";
        bool Isvalid = true;

        private bool cValidatePass(CUser vUser)
        {

            if (vUser.Login.Pass != vUser.Login.PassRep)
            {
                message = "La contraseña no coincide";
                Isvalid = false;
                return Isvalid;
            }
            else
            {
                Isvalid = true;
                return Isvalid;
            }

        }

        public string uInsertUser(CUser vUser)
        {
            if (cValidatePass(vUser) == true)
            {
                using (TransactionScope transaction = new TransactionScope())
                {

                    CCompanyRepo tmpCompanyRep = new CCompanyRepo();
                    tmpCompanyRep.uInsert(vUser.Person.Company);

                    objPers.uInsert(vUser.Person);
                    uChangePass(vUser.UserId, vUser.Email, vUser.Auth.AuthId);

                    tUser.Person_ID = vUser.Person.PersonId;
                    tUser.Name = vUser.Email;
                    tUser.Access_ID = 8;
                    tUser.UserStatus_ID = vUser.UserStatusId;
                    tUser.CreatedBy_ID = vUser.Auth.AuthId;
                    tUser.CreatedDate = DateTime.Now;

                    dbSGPP.Users.Add(tUser);
                    dbSGPP.SaveChanges();
                    transaction.Complete();

                }
                return message;
            }
            else
            {
                message = "La contraseña no coincide";
                return message;
            }
        }

        public List<string> uGetUser(CLogin vLogin)
        {
            CAuth tmpAuth = new CAuth();

            List<string> UserPassList = new List<string>();

            var UserPass = dbSGPP.Users.Where(c => c.Name.Equals(vLogin.UserName)).FirstOrDefault();

            if (UserPass == null)
            {
                UserPassList.Add("Usuario Invalido");

                return UserPassList;
            }
            else
            {
                uIsUserAccess(UserPass.User_ID, vLogin.Pass);
                tmpAuth.AuthId = UserPass.User_ID;
                tmpAuth.AuthName = UserPass.Name;

                string tmpUser = UserPass.Name;
                UserPassList.Add(UserPass.Name);
                UserPassList.Add(UserPass.User_ID.ToString());

                return UserPassList;
            }
        }

        //Función Para Probar el Acceso
        public string uIsUserAccess(int vUserId, string vPass)
        {
            using (var tmpContext = new SGPPEntities())
            {
                var rowafect = tmpContext.Database.ExecuteSqlCommand(
                    "UC.IsUserAccess @PrmUserID= " + vUserId + ", @PrmPass= " + vPass);

                if (rowafect > 0)
                {
                    message = "Contraseña fallida";
                }

                return rowafect.ToString();
            }

        }

        public string uChangePass(int vPrmUsrId, string vPrmPass, int vPrmModifId)
        {
            using (var tmpContext = new SGPPEntities())
            {
                var rowafect = tmpContext.Database.ExecuteSqlCommand(
                      "UC.ChangeUserPassword @PrmUserId= " + vPrmUsrId + ", @PrmPass = " + vPrmPass + ", @PrmModifierUserId=" + vPrmModifId);
                if (rowafect > 0)
                {
                    message = "Contraseña creada";
                }
                else
                {
                    message = "Contraseña fallida";
                }
            }

            return message;
        }
    }
}