﻿<%@ Page Title="" Language="C#" MasterPageFile="~/site/Master.Master" AutoEventWireup="true" CodeBehind="profil.aspx.cs" Inherits="Pizza_Bootstarp.site.profil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cpHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpSlider" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpBody" runat="server">
    <div class="row">
        <div class="col-sm-3">
            <asp:Image ID="image" Width="270" Height="270" CssClass="img-responsive" runat="server" />
            <hr />
            <h5 style="margin-left: 5px">Profil resmini güncelle</h5>
            <asp:FileUpload ID="resim" runat="server" />
            <div style="margin-bottom: 10px"></div>
            <asp:Button ID="btnKaydet" runat="server" Width="50%" CssClass="btn btn-success" Text="Kaydet" OnClick="btnKaydet_OnClick" />
           
        </div>
        <div class="col-sm-6">
            <table class="table">
                <caption></caption>
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Üye Bilgileri</th>
                    </tr>
                </thead>
                <tbody>
                    <asp:Repeater runat="server" ID="rpUye">
                        <ItemTemplate>
                            <tr>
                                <th scope="row">Kullanıcı Adı</th>
                                <td><%# Eval("u_kullanici_adi") %></td>
                            </tr>
                            <tr>
                                <th scope="row">Şifre</th>
                                <td><%# Eval("u_sifre") %></td>
                            </tr>
                            <tr>
                                <th scope="row">Ad</th>
                                <td><%# Eval("u_ad") %></td>
                            </tr>
                            <tr>
                                <th scope="row">Soyad</th>
                                <td><%# Eval("u_soyad") %></td>
                            </tr>
                            <tr>
                                <th scope="row">E-mail</th>
                                <td><%# Eval("u_email") %></td>
                            </tr>
                            <tr>
                                <th scope="row">Telefon</th>
                                <td><%# Eval("u_telefon") %></td>
                            </tr>
                            <tr>
                                <th scope="row">Doğum Tarihi</th>
                                <td><%# Eval("u_dogum_tarihi") %></td>
                            </tr>
                        </ItemTemplate>
                    </asp:Repeater>
                </tbody>
            </table>
            <div style="margin-bottom: 25px">
                <asp:Button ID="btnGuncelle" CssClass="btn btn-primary" Width="100%" runat="server" Text="Güncelle" OnClick="btnGuncelle_OnClick" />
            </div>
        </div>
        <div class="col-sm-3" style="background-color: #f5f5f5;">
            <h4 style="text-align: center">Yorum Geçmişi</h4>
            <div class="clearfix"></div>
            <asp:Repeater ID="rpHareketDokumu" runat="server">
                <ItemTemplate>
                    <h5>
                        <%# Eval("y_icerik").ToString().Length>=20 ? Eval("y_icerik").ToString().Substring(0,20) +" .." : Eval("y_icerik") %>
                        &nbsp;<p style="float: right; font-size: smaller">
                            <%# Eval("y_yapma_tarihi") %>
                        </p>
                    </h5>
                    <div class="clearfix"></div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
    <hr />
</asp:Content>
