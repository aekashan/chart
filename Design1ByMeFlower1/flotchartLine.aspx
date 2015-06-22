<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="flotchartLine.aspx.cs" Inherits="Design1ByMeFlower1.flotchartLine" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>http://www.pikemere.co.uk/blog/flot-how-to-create-charts/</title>
   <%-- http://www.pikemere.co.uk/blog/flot-how-to-create-charts/
http://www.pikemere.co.uk/blog/flot-how-to-create-charts/
http://www.pikemere.co.uk/blog/flot-how-to-create-charts/
http://www.pikemere.co.uk/blog/flot-how-to-create-charts/
http://www.pikemere.co.uk/blog/flot-how-to-create-charts/
http://www.pikemere.co.uk/blog/flot-how-to-create-charts/  
   --%>
    <script src="plugin/flot/excanvas.min.js" type="text/javascript"></script>
    <script src="plugin/jquery/jquery-1.7.2.js" type="text/javascript"></script>
    <script src="plugin/flot/jquery.flot.js" type="text/javascript"></script>
    <style>
            #placeholder1 {
                width: 500px;
                height: 300px;
            }
    </style>
        <script type="text/javascript">
            $(document).ready(function () {
                var d1 = [[1, 300], [2, 600], [3, 550], [4, 400], [5, 300], [6, 1000], [7, 250], [8, 500]];
                $.plot($("#placeholder1"), [d1]);
            });
</script>
</head>

<body>
    <form id="form1" runat="server">
    <div id="placeholder1">
    </div>


    </form>
</body>
</html>


