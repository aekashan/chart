<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="flotchartArea.aspx.cs" Inherits="Design1ByMeFlower1.flotchartArea" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Flot Area Chart</title>
 
<style type="text/css">
body { font-family: Verdana, Arial, sans-serif; font-size: 12px; }
#placeholder { width: 450px; height: 200px; }
.legend table, .legend > div { height: 50px !important; opacity: 1 !important; right: 285px; top: 10px; width: 100px !important; }
.legend table { border: 1px solid #555; padding: 5px; }
</style>
 
<!--[if lte IE 8]><script type="text/javascript" language="javascript" src="plugin/flot/excanvas.min.js"></script><![endif]-->
    <script src="plugin/jquery/jquery-1.7.2.js" type="text/javascript"></script>
    <script src="plugin/flot/jquery.flot.js" type="text/javascript"></script>
    <script src="plugin/flot/jquery.flot.axislabels.js" type="text/javascript"></script>
 
<script type="text/javascript">
$(document).ready(function () {
    var d1 = [[1262304000000, 6], [1264982400000, 3057], [1267401600000, 20434], [1270080000000, 31982], [1272672000000, 26602], [1275350400000, 27826], [1277942400000, 24302], [1280620800000, 24237], [1283299200000, 21004], [1285891200000, 12144], [1288569600000, 10577], [1291161600000, 10295]];
    var d2 = [[1262304000000, 5], [1264982400000, 200], [1267401600000, 1605], [1270080000000, 6129], [1272672000000, 11643], [1275350400000, 19055], [1277942400000, 30062], [1280620800000, 39197], [1283299200000, 37000], [1285891200000, 27000], [1288569600000, 21000], [1291161600000, 17000]];
 
    var data1 = [
        { label: "Label 1", data: d1, points: { fillColor: "#4572A7", size: 5 }, color: '#4572A7' },
        { label: "Label 2", data: d2, points: { fillColor: "#89A54E", size: 5 }, color: '#89A54E' }
    ];
 
    $.plot($("#placeholder"), data1, {
        xaxis: {
            min: (new Date(2009, 12, 1)).getTime(),
            max: (new Date(2010, 11, 1)).getTime(),
            mode: "time",
            tickSize: [1, "month"],
            monthNames: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
            tickLength: 0,
            axisLabel: 'Month',
            axisLabelUseCanvas: true,
            axisLabelFontSizePixels: 12,
            axisLabelFontFamily: 'Verdana, Arial, Helvetica, Tahoma, sans-serif',
            axisLabelPadding: 5
        },
        yaxis: {
            axisLabel: 'Amount',
            axisLabelUseCanvas: true,
            axisLabelFontSizePixels: 12,
            axisLabelFontFamily: 'Verdana, Arial, Helvetica, Tahoma, sans-serif',
            axisLabelPadding: 5
        },
        series: {
            lines: {
                show: true, fill: true
            },
            points: {
                show: false
            },
        },
        grid: {
            borderWidth: 1
        },
        legend: {
            labelBoxBorderColor: "none",
            position: "right"
        }
    });
});
</script>
</head>
 
<body>
    <div id="placeholder"></div>
</body>
</html>