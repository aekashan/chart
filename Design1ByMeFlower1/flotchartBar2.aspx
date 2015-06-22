<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="flotchartBar2.aspx.cs" Inherits="Design1ByMeFlower1.flotchartBar2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Flot Bar Chart</title>
 
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
    <script src="plugin/flot/jquery.flot.axislabels.js" type="text/javascript"></script>
    <script src="plugin/flot/jquery.flot.orderBars.js" type="text/javascript"></script>

 
<script type="text/javascript">
$(document).ready(function () {
    var d1_1 = [
        [1325376000000, 120],
        [1328054400000, 70],
        [1330560000000, 100],
        [1333238400000, 60],
        [1335830400000, 35]
    ];
 
    var d1_2 = [
        [1325376000000, 80],
        [1328054400000, 60],
        [1330560000000, 30],
        [1333238400000, 35],
        [1335830400000, 30]
    ];
 
    var d1_3 = [
        [1325376000000, 80],
        [1328054400000, 40],
        [1330560000000, 30],
        [1333238400000, 20],
        [1335830400000, 10]
    ];
 
    var d1_4 = [
        [1325376000000, 15],
        [1328054400000, 10],
        [1330560000000, 15],
        [1333238400000, 20],
        [1335830400000, 15]
    ];
 
    var data1 = [
        {
            label: "Product 1",
            data: d1_1,
            bars: {
                show: true,
                barWidth: 12*24*60*60*300,
                fill: true,
                lineWidth: 1,
                order: 1,
                fillColor:  "#AA4643"
            },
            color: "#AA4643"
        },
        {
            label: "Product 2",
            data: d1_2,
            bars: {
                show: true,
                barWidth: 12*24*60*60*300,
                fill: true,
                lineWidth: 1,
                order: 2,
                fillColor:  "#89A54E"
            },
            color: "#89A54E"
        },
        {
            label: "Product 3",
            data: d1_3,
            bars: {
                show: true,
                barWidth: 12*24*60*60*300,
                fill: true,
                lineWidth: 1,
                order: 3,
                fillColor:  "#4572A7"
            },
            color: "#4572A7"
        },
        {
            label: "Product 4",
            data: d1_4,
            bars: {
                    show: true,
                barWidth: 12*24*60*60*300,
                fill: true,
                lineWidth: 1,
                order: 4,
                fillColor:  "#80699B"
            },
            color: "#80699B"
        }
    ];
 
    $.plot($("#placeholder"), data1, {
        xaxis: {
            min: (new Date(2011, 11, 15)).getTime(),
            max: (new Date(2012, 04, 18)).getTime(),
            mode: "time",
            timeformat: "%b",
            tickSize: [1, "month"],
            monthNames: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
            tickLength: 0, // hide gridlines
            axisLabel: 'Month',
            axisLabelUseCanvas: true,
            axisLabelFontSizePixels: 12,
            axisLabelFontFamily: 'Verdana, Arial, Helvetica, Tahoma, sans-serif',
            axisLabelPadding: 5
        },
        yaxis: {
            axisLabel: 'Value',
            axisLabelUseCanvas: true,
            axisLabelFontSizePixels: 12,
            axisLabelFontFamily: 'Verdana, Arial, Helvetica, Tahoma, sans-serif',
            axisLabelPadding: 5
        },
        grid: {
            hoverable: true,
            clickable: false,
            borderWidth: 1
        },
        legend: {
            labelBoxBorderColor: "none",
            position: "right"
        },
        series: {
            shadowSize: 1
        }
    });
 
    function showTooltip(x, y, contents, z) {
        $('<div id="flot-tooltip">' + contents + '</div>').css({
            top: y - 20,
            left: x - 90,
            'border-color': z,
        }).appendTo("body").show();
    }
 
    function getMonthName(newTimestamp) {
        var d = new Date(newTimestamp);
 
        var numericMonth = d.getMonth();
        var monthArray = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"];
 
        var alphaMonth = monthArray[numericMonth];
 
        return alphaMonth;
    }
 
    $("#placeholder").bind("plothover", function (event, pos, item) {
        if (item) {
            if (previousPoint != item.datapoint) {
                previousPoint = item.datapoint;
                $("#flot-tooltip").remove();
 
                var originalPoint;
 
                if (item.datapoint[0] == item.series.data[0][3]) {
                    originalPoint = item.series.data[0][0];
                } else if (item.datapoint[0] == item.series.data[1][3]){
                    originalPoint = item.series.data[1][0];
                } else if (item.datapoint[0] == item.series.data[2][3]){
                    originalPoint = item.series.data[2][0];
                } else if (item.datapoint[0] == item.series.data[3][3]){
                    originalPoint = item.series.data[3][0];
                } else if (item.datapoint[0] == item.series.data[4][3]){
                    originalPoint = item.series.data[4][0];
                }
 
                var x = getMonthName(originalPoint);
                y = item.datapoint[1];
                z = item.series.color;
 
                showTooltip(item.pageX, item.pageY,
                    "<b>" + item.series.label + "</b><br /> " + x + " = " + y + "&deg;C",
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