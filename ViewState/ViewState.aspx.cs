using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ViewState
{
    public partial class ViewState : System.Web.UI.Page
    {
        private string contents;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.IsPostBack)
            {
                contents = (string)ViewState["contents"];
            }
        }

        protected void Page_PreRender(Object sender, EventArgs e)
        {
            ViewState["contents"] = contents;
        }

        protected void cmdSave_Click(object sender, EventArgs e)
        {
            contents = txtValue.Text;
            txtValue.Text = "";
        }
        protected void cmdLoad_Click(object sender, EventArgs e)
        {
            txtValue.Text = contents;
        }
    }
}