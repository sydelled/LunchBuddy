<%@ Page Title="Profile Sign Up" Language="VB" MasterPageFile="~/LunchBuddyMaster.master" AutoEventWireup="false" CodeFile="ProfileSignup.aspx.vb" Inherits="ProfileSignup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            height: 24px;
        }
        .auto-style5 {
            height: 10px;
        }
        .auto-style6 {
            width: 96px;
        }
        .auto-style7 {
            height: 24px;
            width: 96px;
        }
        .auto-style8 {
            height: 20px;
            width: 96px;
        }
        .auto-style9 {
            height: 18px;
            width: 96px;
        }
        .auto-style10 {
            height: 18px;
        }
        .auto-style11 {
            width: 96px;
            height: 29px;
        }
        .auto-style12 {
            height: 29px;
        }
        .auto-style13 {
            width: 96px;
            height: 26px;
        }
        .auto-style14 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <table class="auto-style3">
        <tr>
            <td class="auto-style7">
                &nbsp;</td>
            <td class="auto-style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">
                First Name</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtFirstName" runat="server" CausesValidation="True" Width="300px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorFirstName" runat="server" ControlToValidate="txtFirstName" ErrorMessage="*First Name Required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                Last Name:</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtLastName" runat="server" Width="300px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorLastName" runat="server" ControlToValidate="txtLastName" ErrorMessage="*Last Name Required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">
                <asp:Label ID="lblAge" runat="server" Text="Age"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:DropDownList ID="ddlAge" runat="server">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>18</asp:ListItem>

                    <asp:ListItem>19</asp:ListItem>
                    <asp:ListItem>20</asp:ListItem>
                    <asp:ListItem Value="21"></asp:ListItem>
                    <asp:ListItem Value="22"></asp:ListItem>
                    <asp:ListItem Value="23"></asp:ListItem>
                    <asp:ListItem Value="24"></asp:ListItem>
                    <asp:ListItem Value="25"></asp:ListItem>
                    <asp:ListItem Value="26"></asp:ListItem>
                    <asp:ListItem Value="27"></asp:ListItem>
                    <asp:ListItem Value="28"></asp:ListItem>
                    <asp:ListItem Value="29"></asp:ListItem>
                    <asp:ListItem Value="29"></asp:ListItem>
                    <asp:ListItem>30</asp:ListItem>
                    <asp:ListItem Value="31"></asp:ListItem>
                    <asp:ListItem>32</asp:ListItem>
                    <asp:ListItem>33</asp:ListItem>
                    <asp:ListItem>34</asp:ListItem>
                    <asp:ListItem>35</asp:ListItem>
                    <asp:ListItem>36</asp:ListItem>
                    <asp:ListItem>36</asp:ListItem>
                    <asp:ListItem>37</asp:ListItem>
                    <asp:ListItem>38</asp:ListItem>
                    <asp:ListItem>39</asp:ListItem>
                    <asp:ListItem>40</asp:ListItem>
                    <asp:ListItem>41</asp:ListItem>
                    <asp:ListItem>42</asp:ListItem>
                    <asp:ListItem>43</asp:ListItem>
                    <asp:ListItem>44</asp:ListItem>
                    <asp:ListItem>45</asp:ListItem>
                    <asp:ListItem>46</asp:ListItem>
                    <asp:ListItem>47</asp:ListItem>
                    <asp:ListItem>48</asp:ListItem>
                    <asp:ListItem>49</asp:ListItem>
                    <asp:ListItem>50</asp:ListItem>
                    <asp:ListItem>51</asp:ListItem>
                    <asp:ListItem>52</asp:ListItem>
                    <asp:ListItem>53</asp:ListItem>
                    <asp:ListItem>54</asp:ListItem>
                    <asp:ListItem>55</asp:ListItem>
                    <asp:ListItem>56</asp:ListItem>
                    <asp:ListItem>57</asp:ListItem>
                    <asp:ListItem>58</asp:ListItem>
                    <asp:ListItem>59</asp:ListItem>
                    <asp:ListItem>60</asp:ListItem>
                    <asp:ListItem>61</asp:ListItem>
                    <asp:ListItem>62</asp:ListItem>
                    <asp:ListItem>63</asp:ListItem>
                    <asp:ListItem>64</asp:ListItem>
                    <asp:ListItem>65</asp:ListItem>
                    <asp:ListItem>66</asp:ListItem>
                    <asp:ListItem>67</asp:ListItem>
                    <asp:ListItem>68</asp:ListItem>
                    <asp:ListItem>69</asp:ListItem>
                    <asp:ListItem>70</asp:ListItem>
                    <asp:ListItem>71</asp:ListItem>
                    <asp:ListItem>72</asp:ListItem>
                    <asp:ListItem>73</asp:ListItem>
                    <asp:ListItem>74</asp:ListItem>
                    <asp:ListItem>75</asp:ListItem>
                    <asp:ListItem>76</asp:ListItem>
                    <asp:ListItem>77</asp:ListItem>
                    <asp:ListItem>78</asp:ListItem>
                    <asp:ListItem>79</asp:ListItem>
                    <asp:ListItem>80</asp:ListItem>
                    <asp:ListItem>81</asp:ListItem>
                    <asp:ListItem>82</asp:ListItem>
                    <asp:ListItem>83</asp:ListItem>
                    <asp:ListItem>84</asp:ListItem>
                    <asp:ListItem>85</asp:ListItem>
                    <asp:ListItem>86</asp:ListItem>
                    <asp:ListItem>87</asp:ListItem>
                    <asp:ListItem>88</asp:ListItem>
                    <asp:ListItem>98</asp:ListItem>
                    <asp:ListItem>90</asp:ListItem>
                    <asp:ListItem>91</asp:ListItem>
                    <asp:ListItem>92</asp:ListItem>
                    <asp:ListItem>93</asp:ListItem>
                    <asp:ListItem>94</asp:ListItem>
                    <asp:ListItem>95</asp:ListItem>
                    <asp:ListItem>96</asp:ListItem>
                    <asp:ListItem>97</asp:ListItem>
                    <asp:ListItem>99</asp:ListItem>

                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddlAge" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">
                <asp:Label ID="Label3" runat="server" Text="Gender"></asp:Label>
            </td>
            <td class="auto-style10">
                <asp:DropDownList ID="ddlGender" runat="server">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem Value="1">Female</asp:ListItem>
                    <asp:ListItem Value="1">Male</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddlGender" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:Label ID="Label4" runat="server" Text="City"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtCity" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="txtCity" Display="Dynamic" ErrorMessage="Min 1 and Max 100 characters required" ValidationExpression="^[\s\S]{1,100}$" ForeColor="#CC0000" CssClass="auto-style5"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style11">State</td>
            <td class="auto-style12">
                <asp:DropDownList ID="ddlState" runat="server" Height="17px" Width="50px">
                    <asp:ListItem>GA</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ddlState" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">Bio</td>
            <td>
                <asp:TextBox ID="txtBio" runat="server" Height="111px" Width="300px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtBio" ErrorMessage="*" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txtBio" Display="Dynamic" ErrorMessage="500 Character Limit" ValidationExpression="^[\s\S]{0,500}$" ForeColor="#CC0000"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">
                <asp:Label ID="Label5" runat="server" Text=" Profile Picture"></asp:Label>
            </td>
            <td class="auto-style14">
                <asp:FileUpload ID="FileUploadPic" runat="server" Width="300px" size="60"/>
                <br />
                <asp:Button ID="bttnUpload" runat="server" Text="Upload" />
                <div id="UploadDetails" visible="false" runat="server">
                    File Name: <span id="FileName" runat="server" /><br />
                    File Content: <span id="FileContent" runat="server" /><br />
                    File Size:<span id="FileSize" runat="server" /><br />
                </div>
                <span id="span1" style="color:Red" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td>
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
            </td>
        </tr>
        <tr>
            <td class="auto-style6">&nbsp;</td>
            <td>*Required</td>
        </tr>
    </table>
    
</asp:Content>

