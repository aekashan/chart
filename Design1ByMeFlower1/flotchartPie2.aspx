<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="flotchartPie2.aspx.cs" Inherits="Design1ByMeFlower1.flotchartPie2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<style type="text/css">
    body { font-family: Verdana, Arial, sans-serif; font-size: 12px; }    
    .legend table, .legend > div { height: 82px !important; opacity: 1 !important; left: 170px; top: 10px; width: 116px !important; }
    .legend table { border: 1px solid #555; padding: 5px; }
    
    #placeholder { width: 250px; height: 150px; }
    #placeholder2 { width: 250px; height: 150px; }
    #placeholder3 { width: 250px; height: 150px; }
    #placeholder4 { width: 250px; height: 150px; }
    #placeholder5 { width: 250px; height: 150px; }
    #placeholder6 { width: 250px; height: 150px; }
    #placeholder7 { width: 250px; height: 150px; }
    #placeholder8 { width: 250px; height: 150px; }
</style>
 

<!--[if lte IE 8]><script type="text/javascript" language="javascript" src="excanvas.min.js"></script><![endif]-->
    <script src="plugin/jquery/jquery-1.7.2.js" type="text/javascript"></script>
    <script src="plugin/flot/jquery.flot.js" type="text/javascript"></script>
    <script src="plugin/flot/jquery.flot.pie.js" type="text/javascript"></script>

<script type="text/javascript">
    var data = [
    { label: "IE", data: 19.5, color: "#4572A7" },
    { label: "Safari", data: 4.5, color: "#80699B" },
    { label: "Firefox", data: 36.6, color: "#AA4643" },
    { label: "Opera", data: 2.3, color: "#3D96AE" },
    { label: "Chrome", data: 36.3, color: "#89A54E" },
    { label: "Other", data: 0.8, color: "#3D96AE" }
];

    $(document).ready(function () {
        $.plot($("#placeholder"), data, {
            series: {
                pie: {
                    show: true
                }
            },
            legend: {
                labelBoxBorderColor: "none"
            }
        });
        $.plot($("#placeholder2"), data, {
            series: {
                pie: {
                    show: true
                }
            },
            legend: {
                show: false
            }
        });
        $.plot($("#placeholder3"), data, {
            series: {
                pie: {
                    show: true,
                    radius: 1,
                    label: {
                        show: true,
                        radius: 1,
                        formatter: function (label, series) {
                            return '<div style="font-size:11px; text-align:center; padding:2px; color:white;">' + label + '<br/>' + Math.round(series.percent) + '%</div>';
                        },
                        background: {
                            opacity: 0.8
                        }
                    }
                }
            },
            legend: {
                show: false
            }
        });

        $.plot($("#placeholder4"), data, {
            series: {
                pie: {
                    show: true,
                    radius: 1,
                    label: {
                        show: true,
                        radius: 1,
                        formatter: function (label, series) {
                            return '<div style="font-size:11px; text-align:center; padding:2px; color:white;">' + label + '<br/>' + Math.round(series.percent) + '%</div>';
                        },
                        background: {
                            opacity: 0.8,
                            color: '#444'
                        }
                    }
                }
            },
            legend: {
                show: false
            }
        });

        $.plot($("#placeholder5"), data, {
            series: {
                pie: {
                    show: true,
                    combine: {
                        color: '#999',
                        threshold: 0.1
                    }
                }
            },
            legend: {
                show: false
            }
        });


        $.plot($("#placeholder6"), data, {
            series: {
                pie: {
                    show: true,
                    radius: 1,
                    label: {
                        show: true,
                        radius: 2 / 3,
                        formatter: function (label, series) {
                            return '<div style="font-size:11px ;text-align:center; padding:2px; color:white;">' + label + '<br/>' + Math.round(series.percent) + '%</div>';
                        },
                        threshold: 0.1
                    }
                }
            },
            legend: {
                show: false
            }
        });

        $.plot($("#placeholder7"), data, {
            series: {
                pie: {
                    innerRadius: 0.5,
                    show: true
                }
            },
            grid: {
                hoverable: true
            },
            legend: {
                labelBoxBorderColor: "none"
            }
        });
        $("#placeholder7").bind("plothover", pieHover);

        $.plot($("#placeholder8"), data, {
            series: {
                pie: {
                    show: true
                }
            },
            grid: {
                hoverable: true
            },
            legend: {
                labelBoxBorderColor: "none"
            }
        });

        $("#placeholder8").bind("plothover", pieHover);


    });


    function pieHover(event, pos, obj) {
        if (!obj)
            return;

        percent = parseFloat(obj.series.percent).toFixed(2);
        $("#pieHover").html('<span style="font-weight: bold; color: ' + obj.series.color + '">' + obj.series.label + ' (' + percent + '%)</span>');
    }

</script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div id="placeholder"></div>
    <div id="placeholder2"></div>
    <div id="placeholder3"></div>
    <div id="placeholder4"></div>
    <div id="placeholder5"></div>
    <div id="placeholder6"></div>
    <div id="placeholder7"></div>
    <div id="placeholder8"></div>
    </div>
    </form>
</body>
</html>
