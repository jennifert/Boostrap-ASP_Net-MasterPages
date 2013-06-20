<%@ Page Title="Movie Theatres in Toronto" Language="C#" MasterPageFile="~/BootstrapASP.Master" AutoEventWireup="true" CodeFile="GoogleMap.aspx.cs" Inherits="GoogleMap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Many Google Map in Bootstrap Modal</h1>
      <p>Click a location to see map</p>
      <!-- Table to trigger modal -->
       <table class="table table-condensed">
    
            <thead>
            
              <tr>
                <th>Movie</th>
                <th>Location</th>
              </tr>
              
            </thead>
            <tbody>
              <tr>
                <td><strong>The Host</strong></td>
                <td><i class="icon-map-marker"></i> <a class="openmodal" href="#mapmodals" role="button"  data-toggle="modal" data-id="Cineplex Odeon Yonge & Dundas Cinemas"> Cineplex Odeon Yonge & Dundas Cinemas</a></td>
              </tr>
              <tr>
                <td><strong>Jurassic Park</strong></td>
                 <td>
                 <i class="icon-map-marker"></i> <a class="openmodal" href="#mapmodals" data-id="Scotiabank Theatre Toronto" role="button"  data-toggle="modal"> Scotiabank Theatre Toronto</a>
                </td>
              </tr>
            </tbody>
      </table>
      

       <!-- MAPS -->

      <div class="modal hide fade" id="mapmodals">
        <div class="modal-body">
            <button type="button" class="close" data-dismiss="modal">Close</button>
            <div id="map_canvas" style="width:530px; height:300px"></div>
        </div>
        <div class="modal-footer">
            <h3 id="myCity"></h3>
        </div>
</asp:Content>

