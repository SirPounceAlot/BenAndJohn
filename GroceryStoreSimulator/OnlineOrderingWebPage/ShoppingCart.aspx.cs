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
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

/// <summary>
/// This is the event handler class for the ShoppingCart webpage
/// </summary>
public partial class ShoppingCart : System.Web.UI.Page
{
    /// <summary>
    /// Event handler for the page load event
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Page_Load(object sender, EventArgs e)
    {
        Random rand = new Random();
        lblOrderNum.Text = rand.Next().ToString();

        lblOrderDetails.Text = string.Join("<br/>\r\n", (List<ListItem>)Session["Order"]);

    }
    /// <summary>
    /// Event handler for btnReturn button
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnReturn_Click(object sender, EventArgs e)
    {
        Response.Redirect("Products.aspx");
    }
}