<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PatientDB.aspx.cs" Inherits="SWE2109537_ES.PatientDB" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
                <h1>Patients Info Stored in Database</h1>

                    <asp:XmlDataSource ID="PatientsDataSource" runat="server" DataFile="~/Patients.xml"></asp:XmlDataSource>

                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" DataSourceID="PatientsDataSource">
                        <Columns>
                            <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName"/>
                            <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName"/>
                            <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender"/>
                            <asp:BoundField DataField="PhoneNo" HeaderText="PhoneNo" SortExpression="PhoneNo"/>
                            <asp:BoundField DataField="BirthDay" HeaderText="BirthDay" SortExpression="BirthDay"/>
                            <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age"/>
                            <asp:BoundField DataField="MartialState" HeaderText="MartialState" SortExpression="MartialState"/>
                            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address"/>
                            <asp:BoundField DataField="Insurance" HeaderText="Insurance" SortExpression="Insurance"/>
                        </Columns>
                    </asp:GridView>

            </center>
            
        </div>
    </form>
</body>
</html>
