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
/// This class contains the event handlers for the Products webpage
/// </summary>
public partial class Products : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblStoreSelected.Text = Session["Store"].ToString();
        lblLoyalty.Text = Session["Loyalty"].ToString();
    }

    /// <summary>
    /// Event handler for the btnSelect button
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnSelect_Click(object sender, EventArgs e)
    {
        if (lbProducts.SelectedIndex != -1)
        {
            lblSelectQuantity.Visible = true;
            txtQuantity.Visible = true;
            btnSelect.Visible = false;
            btnRemove.Visible = false;
            btnSelectQuantity.Visible = true;
        }

    }

    /// <summary>
    /// Event handler for the btnSelectQuantity button
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnSelectQuantity_Click(object sender, EventArgs e)
    {
        Session["Quantity"] = txtQuantity.Text;
        lblSelectQuantity.Visible = false;
        btnSelect.Visible = true;
        btnRemove.Visible = true;
        txtQuantity.Visible = false;
        btnSelectQuantity.Visible = false;
        lbSelectedProducts.Items.Add(lbProducts.SelectedItem + "  -  Quantity: " + Session["Quantity"].ToString());
        List<ListItem> lists = new List<ListItem>();
        foreach(ListItem l in lbSelectedProducts.Items)
        {
            lists.Add(l);
        }
        Session["Order"] = lists;
        

    }

    /// <summary>
    /// Event handler for the btnRemove button
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnRemove_Click(object sender, EventArgs e)
    {
        lbSelectedProducts.Items.Remove(lbSelectedProducts.SelectedItem);

    }

    /// <summary>
    /// Event handler for the btnCompleteOrder button
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnCompleteOrder_Click(object sender, EventArgs e)
    {
        Response.Redirect("ShoppingCart.aspx");
    }
}