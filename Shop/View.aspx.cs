using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Shop
{
    public partial class View : System.Web.UI.Page
    {
        public static string GetNoShowHtml()
        {
            StringBuilder html = new StringBuilder();
            var noData = GoodList.GetRepository().GetAllResponses();
            foreach (var rsvp in noData)
            {
                html.Append(String.Format("<tr><td>{0}</td><td>{1}</ td >< td >{2}</ td > ", rsvp.Name, rsvp.Price, rsvp.Type));
            }
            return html.ToString();
        }
    }
}