/**********************************************************************
 * Assignment: Final Project
 * Name: Ben Tenhover, John Locklear
 * Email: tenhovbe @mail.uc.edu
 * Course/Section/Semester: IT3047C/001/Spring2019
 * Due Date: 5/1/2019
 * Description: Build a webform that allows customers to place grocery orders
 * Citations: Stackoverflow, Textbook
**********************************************************************/
using System;
using System.Collections.Generic;
using System.Data.Linq;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
/// <summary>
/// This is the home page of the Peaches and Leeches Store
/// </summary>
public partial class _Default : System.Web.UI.Page {
    /// <summary>
    /// Page Load event handler
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Page_Load(object sender, EventArgs e)
    {
        lblError.Visible = false;
    }
    /// <summary>
    /// btnSubmitStore event handler
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnSubmitStore_Click(object sender, EventArgs e)
    {
        if (txtLoyalty.Text == String.Empty)
        {
            lblError.Visible = true;
        }
        else
        {
            Session["Loyalty"] = txtLoyalty.Text;
            Session["Store"] = ddlStores.SelectedItem;
            Response.Redirect("Products.aspx");
        }
    }
}