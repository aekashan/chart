<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="flotchartBar.aspx.cs" Inherits="Design1ByMeFlower1.flotchartBar" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Flot Bar Chart</title>

<style type="text/css">
body { font-family: Verdana, Arial, sans-serif; font-size: 12px; }
#placeholder { width: 450px; height: 200px; }
</style>

<!--[if lte IE 8]><script type="text/javascript" language="javascript" src="plugin/flot/excanvas.min.js"></script><![endif]-->
    <script src="plugin/jquery/jquery-1.7.2.js" type="text/javascript"></script>
    <script src="plugin/flot/jquery.flot.js" type="text/javascript"></script>

<script type="text/javascript">
    var d1 = [[0, 3], [1, 3], [2, 5], [3, 7], [4, 8], [5, 10], [6, 11], [7, 9], [8, 5], [9, 13]];

    $(document).ready(function () {
        $.plot($("#placeholder"), [
        {
            data: d1,
            bars: {
                show: true
            }
        }
    ]);
    });
</script>
</head>

<body>
    <div id="placeholder"></div>
</body>
</html>
