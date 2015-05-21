using SGPP.GSPPModels.UC;
using SGPP.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SGPP.Repository.UC
{
    public class CLoginRepo
    {
        public string uInserAuth(CLogin vLogin)
        {
            string message = "";

            using (var tmpContext = new SGPPEntities())
            {
                var rowafect = tmpContext.Database.ExecuteSqlCommand(
                    "UC.ChangeUserPassword @PrmUserId= " + vLogin.UserId + ", @PrmPass = " + vLogin.Pass + ", ,@PrmModifierUserId =" + vLogin.CreateById);

                if (rowafect > 0)
                {
                    message = "Usuario Correcto";
                }
                else
                {
                    message = "Usuario Incorrecto";
                }
                return message;
            }
        }
    }
}