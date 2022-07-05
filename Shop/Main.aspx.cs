using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Shop
{
    public partial class Main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                Good rsvp = new Good();

                if (TryUpdateModel(rsvp, new FormValueProvider(ModelBindingExecutionContext)))
                {
                    GoodList.GetRepository().AddResponse(rsvp);
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "Товар добавлен.", "alert('Товар добавлен!')", true);

                    name.Text = string.Empty;
                    price.Text = string.Empty;
                    type.SelectedValue = null;
                }
            }
        }
    }
}