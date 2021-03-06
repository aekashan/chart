<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="flotcharLine2.aspx.cs" Inherits="Design1ByMeFlower1.flotcharLine2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Flot Line Graph</title>
 
<style type="text/css">
body { font-family: Verdana, Arial, sans-serif; font-size: 12px; }
h1 { width: 450px; margin: 0 auto; font-size: 12px; text-align: center; }
#placeholder { width: 450px; height: 200px; position: relative; margin: 0 auto; }
.legend table, .legend > div { height: 82px !important; opacity: 1 !important; right: -55px; top: 10px; width: 116px !important; }
.legend table { border: 1px solid #555; padding: 5px; }
#flot-tooltip { font-size: 12px; font-family: Verdana, Arial, sans-serif; position: absolute; display: none; border: 2px solid; padding: 2px; background-color: #FFF; opacity: 0.8; -moz-border-radius: 5px; -webkit-border-radius: 5px; -khtml-border-radius: 5px; border-radius: 5px; }
</style>
 
<!--[if lte IE 8]><script type="text/javascript" language="javascript" src="plugin/flot/excanvas.min.js"></script><![endif]-->
    <script src="plugin/jquery/jquery-1.7.2.js" type="text/javascript"></script>
    <script src="plugin/flot/jquery.flot.js" type="text/javascript"></script>
    <script src="plugin/flot/jquery.flot.symbol.js" type="text/javascript"></script>
    <script src="plugin/flot/jquery.flot.axislabels.js" type="text/javascript"></script>

 
<script type="text/javascript">
//Rome, Italy
var d1 = [[1262304000000, 12], [1264982400000, 13], [1267401600000, 15], [1270080000000, 18], [1272672000000, 23], [1275350400000, 27], [1277942400000, 30], [1280620800000, 30], [1283299200000, 27], [1285891200000, 22], [1288569600000, 16], [1291161600000, 13]];
// Paris, France
var d2 = [[1262304000000, 6], [1264982400000, 7], [1267401600000, 12], [1270080000000, 16], [1272672000000, 20], [1275350400000, 23], [1277942400000, 25], [1280620800000, 24], [1283299200000, 21], [1285891200000, 16], [1288569600000, 10], [1291161600000, 7]];
// Madrid, Spain
var d3 = [[1262304000000, 11], [1264982400000, 13], [1267401600000, 16], [1270080000000, 18], [1272672000000, 22], [1275350400000, 28], [1277942400000, 33], [1280620800000, 32], [1283299200000, 28], [1285891200000, 21], [1288569600000, 15], [1291161600000, 11]];
// London, UK
var d4 = [[1262304000000, 7], [1264982400000, 7], [1267401600000, 10], [1270080000000, 13], [1272672000000, 16], [1275350400000, 20], [1277942400000, 22], [1280620800000, 21], [1283299200000, 19], [1285891200000, 15], [1288569600000, 10], [1291161600000, 8]];
 
var data1 = [
    {label: "Rome, Italy",  data: d1, points: { symbol: "circle", fillColor: "#058DC7" }, color: '#058DC7'},
    {label: "Paris, France",  data: d2, points: { symbol: "diamond", fillColor: "#AA4643" }, color: '#AA4643'},
    {label: "Madrid, Spain",  data: d3, points: { symbol: "square", fillColor: "#50B432" }, color: '#50B432'},
    {label: "London, UK",  data: d4, points: { symbol: "triangle", fillColor: "#ED561B" }, color: '#ED561B'}
];
 
$(document).ready(function () {
    $.plot($("#placeholder"), data1, {
        xaxis: {
            min: (new Date(2009, 11, 18)).getTime(),
            max: (new Date(2010, 11, 15)).getTime(),
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
            axisLabel: 'Temperature (C)',
            axisLabelUseCanvas: true,
            axisLabelFontSizePixels: 12,
            axisLabelFontFamily: 'Verdana, Arial, Helvetica, Tahoma, sans-serif',
            axisLabelPadding: 5
        },
        series: {
            lines: { show: true },
            points: {
                radius: 3,
                show: true,
                fill: true
            },
        },
        grid: {
            hoverable: true,
            borderWidth: 1
        },
        legend: {
            labelBoxBorderColor: "none",
                position: "right"
        }
    });
 
    function showTooltip(x, y, contents, z) {
        $('<div id="flot-tooltip">' + contents + '</div>').css({
            top: y - 30,
            left: x - 135,
            'border-color': z,
        }).appendTo("body").fadeIn(200);
    }
 
    function getMonthName(numericMonth) {
        var monthArray = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"];
        var alphaMonth = monthArray[numericMonth];
 
        return alphaMonth;
    }
 
    function convertToDate(timestamp) {
        var newDate = new Date(timestamp);
        var dateString = newDate.getMonth();
        var monthName = getMonthName(dateString);
 
        return monthName;
    }
 
    var previousPoint = null;
 
    $("#placeholder").bind("plothover", function (event, pos, item) {
        if (item) {
            if ((previousPoint != item.dataIndex) || (previousLabel != item.series.label)) {
                previousPoint = item.dataIndex;
                previousLabel = item.series.label;
 
                $("#flot-tooltip").remove();
 
                var x = convertToDate(item.datapoint[0]),
                y = item.datapoint[1];
                z = item.series.color;
 
                showTooltip(item.pageX, item.pageY,
                    "<b>" + item.series.label + "</b><br /> " + x + " = " + y + "mm",
                    z);
            }
        } else {
            $("#flot-tooltip").remove();
            previousPoint = null;
        }
    });
});
</script>
</head>
 
<body>
    <h1>Average Maximum Temperatures</h1>
    <div id="placeholder"></div>
</body>
</html>