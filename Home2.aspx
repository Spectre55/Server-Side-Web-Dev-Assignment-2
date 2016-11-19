<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home2.aspx.cs" Inherits="Home2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



      
    <form id="form1" runat="server">

    <div>
        <center>
           

         <img src="CSU_Logo_Primary2.png" height="200" width="450"/>

        

        <b><i>       SemesterTerm & Subject: </i></b><asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="CemesterChose" DataTextField="semesterTerm" DataValueField="semesterCode" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>
        <asp:SqlDataSource ID="CemesterChose" runat="server" ConnectionString="<%$ ConnectionStrings:fordA2ConnectionString %>" SelectCommand="SELECT * FROM [semesterTerm]"></asp:SqlDataSource>

        

         <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="classList" DataTextField="subjectName" DataValueField="subjectCode" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>
         <asp:SqlDataSource ID="classList" runat="server" ConnectionString="<%$ ConnectionStrings:fordA2ConnectionString %>" SelectCommand="SELECT DISTINCT subjectsList.subjectName, subjectsList.subjectCode FROM semesterTerm INNER JOIN subjectsList ON subjectsList.semesterNum = @ghg">
             <SelectParameters>
                 <asp:ControlParameter ControlID="DropDownList1" Name="ghg" PropertyName="SelectedValue" />
             </SelectParameters>
         </asp:SqlDataSource>
            <br>
        

         </center>


        <asp:Table ID="Table1" runat="server">







        </asp:Table>


  
         <asp:DataList  ID="DataList1" runat="server" DataSourceID="classesss" Visible="False" >
             
             <ItemTemplate >
                 <table id="hey" style="width:100%; border-style: solid; ">

                  <tr >
                    <td colspan="10"> <asp:Label ID="Label1" runat="server" Text='<%# Eval("subjectCode") %>' />  <asp:Label ID="Label2" runat="server" Text='<%# Eval("classNumber") %>' /></td>
                  </tr>

                   <tr>
                    <th colspan="10" ><asp:Label ID="Label3" runat="server" Text='<%# Eval("className") %>' /></th>
                   </tr> 

                    <tr>
                    <th colspan="10" >Credits: <asp:Label ID="Label4" runat="server" Text='<%# Eval("classCredits") %>' /></th>
                    </tr>

                    <tr>
                    <th colspan="10"><asp:Label ID="classDescripLabel" runat="server" Text='<%# Eval("classDescrip") %>' /></th>
                    </tr>

                    <tr>
                     <td>CRN</td>
                     <td>Section</td>
                     <td>Day</td>
                     <td>Time</td>
                     <td>Location</td>
                     <td>Instructor</td>
                     <td>Begin/End Dates</td>
                     </tr>

                       <tr>
                          <td><asp:Label ID="Label5" runat="server" Text='<%# Eval("classCrn") %>' /></td>
                          <td><asp:Label ID="Label6" runat="server" Text='<%# Eval("classSection") %>' /></td>
                          <td><asp:Label ID="Label7" runat="server" Text='<%# Eval("classDay") %>' /></td>
                          <td><asp:Label ID="Label8" runat="server" Text='<%# Eval("classTime") %>' /></td>
                          <td><asp:Label ID="Label9" runat="server" Text='<%# Eval("classLocation") %>' /></td>
                          <td><asp:Label ID="Label10" runat="server" Text='<%# Eval("classTeacher") %>' /></td>
                          <td><asp:Label ID="Label11" runat="server" Text='<%# Eval("classDates") %>' /></td>
                        </tr>


     

               </table>
             </ItemTemplate>
         </asp:DataList>
      
         <asp:SqlDataSource ID="classesss" runat="server" ConnectionString="<%$ ConnectionStrings:fordA2ConnectionString %>" SelectCommand="SELECT DISTINCT ClassYo.subjectCode, ClassYo.classNumber, ClassYo.className, ClassYo.classCredits, ClassYo.classDescrip, ClassYo.classCrn, ClassYo.classSection, ClassYo.classDay, ClassYo.classTime, ClassYo.classLocation, ClassYo.classTeacher, ClassYo.classDates FROM ClassYo INNER JOIN ClassYo AS ClassYo_1 ON ClassYo.semesterCode LIKE @j INNER JOIN subjectsList ON ClassYo.subjectCode LIKE @ll">
             <SelectParameters>
                 <asp:ControlParameter ControlID="DropDownList1" Name="j" PropertyName="SelectedValue" />
                 <asp:ControlParameter ControlID="DropDownList2" Name="ll" PropertyName="SelectedValue" />
             </SelectParameters>
         </asp:SqlDataSource>





    </div>
    </form>
</asp:Content>

